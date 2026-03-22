/*
 * Tiny allocator for mcasm linear memory.
 *
 * Important runtime constraints:
 * - Do not use global/static storage for heap state.
 * - Allocator metadata must live in runtime memory.
 * - Addressable minimum unit is 4 bytes (int32 word).
 *
 */

#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#define LIBC_HEAP_MIN_ADDR   0x004000
#define LIBC_HEAP_MAX_ADDR   0x800000
#define LIBC_CTRL_MAGIC_ADDR (LIBC_HEAP_MIN_ADDR + 0)
#define LIBC_CTRL_END_ADDR   (LIBC_HEAP_MIN_ADDR + 1)
#define LIBC_CTRL_FREE_ADDR  (LIBC_HEAP_MIN_ADDR + 2)
#define LIBC_HEAP_DATA_START (LIBC_HEAP_MIN_ADDR + 3)
#define LIBC_CTRL_MAGIC_VAL  0x4D414C4C /* "MALL" */

/*
 * Block layout (word-addressed):
 *   block[0] = size_words (header + payload)
 *   block[1] = next_free (only valid when free) / first payload word (when allocated)
 *
 * User pointer = block + 1.
 */
#define LIBC_BLOCK_HEADER_WORDS    1
#define LIBC_MIN_BLOCK_WORDS       2
#define LIBC_MIN_SPLIT_FREE_WORDS  2

#define LIBC_WORD(addr)            (*(int *)(intptr_t)(addr))
#define LIBC_HEAP_END()            (LIBC_WORD(LIBC_CTRL_END_ADDR))
#define LIBC_FREE_HEAD()           (LIBC_WORD(LIBC_CTRL_FREE_ADDR))
#define LIBC_SET_HEAP_END(v)       (LIBC_WORD(LIBC_CTRL_END_ADDR) = (v))
#define LIBC_SET_FREE_HEAD(v)      (LIBC_WORD(LIBC_CTRL_FREE_ADDR) = (v))
#define LIBC_BLOCK_SIZE(addr)      (LIBC_WORD((addr)))
#define LIBC_BLOCK_NEXT(addr)      (LIBC_WORD((addr) + 1))

#define LIBC_ADDR_FROM_PTR(ptr)    ((int)((intptr_t)(ptr)))
#define LIBC_PTR_FROM_ADDR(addr)   ((void *)(intptr_t)(addr))

static void
ensure_heap_init(void)
{
    if (LIBC_WORD(LIBC_CTRL_MAGIC_ADDR) != LIBC_CTRL_MAGIC_VAL) {
        LIBC_WORD(LIBC_CTRL_MAGIC_ADDR) = LIBC_CTRL_MAGIC_VAL;
        LIBC_SET_HEAP_END(LIBC_HEAP_DATA_START);
        LIBC_SET_FREE_HEAD(0);
    }
}

static size_t
align_up_4(size_t n)
{
    size_t rem = n % 4u;
    if (rem == 0u)
        return n;
    return n + (4u - rem);
}

static size_t
real_size_words(size_t user_bytes)
{
    size_t payload_words = align_up_4(user_bytes) / 4u;
    size_t total_words = payload_words + LIBC_BLOCK_HEADER_WORDS;
    if (total_words < LIBC_MIN_BLOCK_WORDS)
        total_words = LIBC_MIN_BLOCK_WORDS;
    return total_words;
}

static int
can_alloc_words(size_t required_words)
{
    int end = LIBC_HEAP_END();
    if (end < LIBC_HEAP_DATA_START || end > LIBC_HEAP_MAX_ADDR)
        return 0;
    if (required_words > (size_t)(LIBC_HEAP_MAX_ADDR - end))
        return 0;
    return 1;
}

void *
malloc(size_t sz)
{
    int prev;
    int block;
    size_t need_words;

    ensure_heap_init();

    need_words = real_size_words(sz);

    prev = 0;
    block = LIBC_FREE_HEAD();
    while (block != 0) {
        int block_size = LIBC_BLOCK_SIZE(block);
        int next = LIBC_BLOCK_NEXT(block);

        if ((size_t)block_size >= need_words) {
            if ((size_t)block_size < need_words + LIBC_MIN_SPLIT_FREE_WORDS) {
                if (prev == 0)
                    LIBC_SET_FREE_HEAD(next);
                else
                    LIBC_BLOCK_NEXT(prev) = next;
                return LIBC_PTR_FROM_ADDR(block + 1);
            }

            {
                int new_free = block + (int)need_words;
                LIBC_BLOCK_SIZE(new_free) = block_size - (int)need_words;
                LIBC_BLOCK_NEXT(new_free) = next;
                LIBC_BLOCK_SIZE(block) = (int)need_words;
                if (prev == 0)
                    LIBC_SET_FREE_HEAD(new_free);
                else
                    LIBC_BLOCK_NEXT(prev) = new_free;
                return LIBC_PTR_FROM_ADDR(block + 1);
            }
        }

        if (next == 0 && LIBC_HEAP_END() == block + block_size) {
            size_t more_words = need_words - (size_t)block_size;
            if (!can_alloc_words(more_words))
                return NULL;
            if (prev == 0)
                LIBC_SET_FREE_HEAD(0);
            else
                LIBC_BLOCK_NEXT(prev) = 0;
            LIBC_SET_HEAP_END(block + (int)need_words);
            LIBC_BLOCK_SIZE(block) = (int)need_words;
            return LIBC_PTR_FROM_ADDR(block + 1);
        }

        prev = block;
        block = next;
    }

    if (!can_alloc_words(need_words))
        return NULL;

    block = LIBC_HEAP_END();
    LIBC_SET_HEAP_END(block + (int)need_words);
    LIBC_BLOCK_SIZE(block) = (int)need_words;
    return LIBC_PTR_FROM_ADDR(block + 1);
}

void
free(void *block_p)
{
    int block;
    int block_size;
    int prev;
    int cur;

    if (block_p == NULL)
        return;

    ensure_heap_init();

    block = LIBC_ADDR_FROM_PTR(block_p) - 1;
    block_size = LIBC_BLOCK_SIZE(block);

    prev = 0;
    cur = LIBC_FREE_HEAD();
    while (cur != 0 && cur < block) {
        prev = cur;
        cur = LIBC_BLOCK_NEXT(cur);
    }

    assert(cur != block);

    if (prev != 0 && prev + LIBC_BLOCK_SIZE(prev) == block) {
        LIBC_BLOCK_SIZE(prev) += block_size;
        block = prev;
    } else {
        if (prev == 0)
            LIBC_SET_FREE_HEAD(block);
        else
            LIBC_BLOCK_NEXT(prev) = block;
        LIBC_BLOCK_NEXT(block) = cur;
    }

    if (cur != 0 && block + LIBC_BLOCK_SIZE(block) == cur) {
        LIBC_BLOCK_SIZE(block) += LIBC_BLOCK_SIZE(cur);
        LIBC_BLOCK_NEXT(block) = LIBC_BLOCK_NEXT(cur);
    }
}

void *
realloc(void *block_p, size_t sz)
{
    int block;
    size_t old_words;
    size_t new_words;

    if (block_p == NULL)
        return malloc(sz);
    if (sz == 0) {
        free(block_p);
        return NULL;
    }

    ensure_heap_init();

    block = LIBC_ADDR_FROM_PTR(block_p) - 1;
    old_words = (size_t)LIBC_BLOCK_SIZE(block);
    new_words = real_size_words(sz);

    if (old_words < new_words) {
        int block_end = block + (int)old_words;
        size_t need = new_words - old_words;

        if (block_end == LIBC_HEAP_END()) {
            if (can_alloc_words(need)) {
                LIBC_SET_HEAP_END(block_end + (int)need);
                LIBC_BLOCK_SIZE(block) = (int)new_words;
                return block_p;
            }
        } else {
            int prev = 0;
            int cur = LIBC_FREE_HEAD();
            while (cur != 0 && cur < block_end) {
                prev = cur;
                cur = LIBC_BLOCK_NEXT(cur);
            }

            if (cur == block_end) {
                size_t right_words = (size_t)LIBC_BLOCK_SIZE(cur);
                if (right_words >= need) {
                    int right_next = LIBC_BLOCK_NEXT(cur);
                    if (right_words < need + LIBC_MIN_SPLIT_FREE_WORDS) {
                        LIBC_BLOCK_SIZE(block) = (int)(old_words + right_words);
                        if (prev == 0)
                            LIBC_SET_FREE_HEAD(right_next);
                        else
                            LIBC_BLOCK_NEXT(prev) = right_next;
                    } else {
                        int new_free = cur + (int)need;
                        LIBC_BLOCK_SIZE(new_free) = (int)(right_words - need);
                        LIBC_BLOCK_NEXT(new_free) = right_next;
                        if (prev == 0)
                            LIBC_SET_FREE_HEAD(new_free);
                        else
                            LIBC_BLOCK_NEXT(prev) = new_free;
                        LIBC_BLOCK_SIZE(block) = (int)new_words;
                    }
                    return block_p;
                }
            }
        }

        {
            void *result = malloc(sz);
            size_t old_payload_bytes = (old_words - LIBC_BLOCK_HEADER_WORDS) * 4u;
            size_t copy_n = old_payload_bytes < sz ? old_payload_bytes : sz;
            if (result == NULL)
                return NULL;
            memcpy(result, block_p, copy_n);
            free(block_p);
            return result;
        }
    }

    if (old_words - new_words >= LIBC_MIN_SPLIT_FREE_WORDS) {
        int tail = block + (int)new_words;
        LIBC_BLOCK_SIZE(block) = (int)new_words;
        LIBC_BLOCK_SIZE(tail) = (int)(old_words - new_words);
        free(LIBC_PTR_FROM_ADDR(tail + 1));
    }

    return block_p;
}

void *
calloc(size_t n, size_t elem_size)
{
    void *result;
    size_t total;

    if (n != 0 && elem_size > ((size_t)-1) / n)
        return NULL;

    total = n * elem_size;
    result = malloc(total);
    if (result != NULL)
        memset(result, 0, total);
    return result;
}
