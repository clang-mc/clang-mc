/*
 * Filesystem-backed stdio is intentionally disabled for now.
 * Keep these placeholders commented out so no symbol is exported yet.
 */

/*
FILE *fopen(const char *path, const char *mode) {}
int fclose(FILE *stream) {}
size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream) {}
size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream) {}
int fflush(FILE *stream) {}
int fseek(FILE *stream, long offset, int whence) {}
long ftell(FILE *stream) {}
int feof(FILE *stream) {}
int ferror(FILE *stream) {}
void clearerr(FILE *stream) {}
*/
