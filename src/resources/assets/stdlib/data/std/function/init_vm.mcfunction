# 初始化虚拟机资源
scoreboard objectives add vm_regs dummy
scoreboard objectives remove vm_regs
scoreboard objectives add vm_regs dummy

# 寄存器
# 函数返回值 caller-saved
scoreboard players set rax vm_regs 0
# 参数或临时寄存器 caller-saved
scoreboard players set r0 vm_regs 0
scoreboard players set r1 vm_regs 0
scoreboard players set r2 vm_regs 0
scoreboard players set r3 vm_regs 0
scoreboard players set r4 vm_regs 0
scoreboard players set r5 vm_regs 0
scoreboard players set r6 vm_regs 0
scoreboard players set r7 vm_regs 0
# 临时寄存器 caller-saved
scoreboard players set t0 vm_regs 0
scoreboard players set t1 vm_regs 0
scoreboard players set t2 vm_regs 0
scoreboard players set t3 vm_regs 0
scoreboard players set t4 vm_regs 0
scoreboard players set t5 vm_regs 0
scoreboard players set t6 vm_regs 0
scoreboard players set t7 vm_regs 0
# 保存寄存器 callee-saved
scoreboard players set x0 vm_regs 0
scoreboard players set x1 vm_regs 0
scoreboard players set x2 vm_regs 0
scoreboard players set x3 vm_regs 0
scoreboard players set x4 vm_regs 0
scoreboard players set x5 vm_regs 0
scoreboard players set x6 vm_regs 0
scoreboard players set x7 vm_regs 0
scoreboard players set x8 vm_regs 0
scoreboard players set x9 vm_regs 0
scoreboard players set x10 vm_regs 0
scoreboard players set x11 vm_regs 0
scoreboard players set x12 vm_regs 0
scoreboard players set x13 vm_regs 0
scoreboard players set x14 vm_regs 0
scoreboard players set x15 vm_regs 0
# 栈指针
scoreboard players set rsp vm_regs 0
# 堆大小
scoreboard players set shp vm_regs 0
# 静态数据区指针
scoreboard players set sbp vm_regs 0
# 编译器保留
scoreboard players set s0 vm_regs 0
scoreboard players set s1 vm_regs 0
scoreboard players set s2 vm_regs 0
scoreboard players set s3 vm_regs 0
scoreboard players set s4 vm_regs 0

# list[int] 内存空间
data modify storage std:vm heap set value []
# 字符串常量映射 不要修改此映射，该映射由脚本生成
data modify storage std:vm str2char_map set value {"\\t": 9, "\\n": 10, "\\x0b": 11, "\\x0c": 12, "\\r": 13, " ": 32, "!": 33, "\"": 34, "#": 35, "$": 36, "%": 37, "&": 38, "'": 39, "(": 40, ")": 41, "*": 42, "+": 43, ",": 44, "-": 45, ".": 46, "/": 47, "0": 48, "1": 49, "2": 50, "3": 51, "4": 52, "5": 53, "6": 54, "7": 55, "8": 56, "9": 57, ":": 58, ";": 59, "<": 60, "=": 61, ">": 62, "?": 63, "@": 64, "A": 65, "B": 66, "C": 67, "D": 68, "E": 69, "F": 70, "G": 71, "H": 72, "I": 73, "J": 74, "K": 75, "L": 76, "M": 77, "N": 78, "O": 79, "P": 80, "Q": 81, "R": 82, "S": 83, "T": 84, "U": 85, "V": 86, "W": 87, "X": 88, "Y": 89, "Z": 90, "[": 91, "\\\\": 92, "]": 93, "^": 94, "_": 95, "`": 96, "a": 97, "b": 98, "c": 99, "d": 100, "e": 101, "f": 102, "g": 103, "h": 104, "i": 105, "j": 106, "k": 107, "l": 108, "m": 109, "n": 110, "o": 111, "p": 112, "q": 113, "r": 114, "s": 115, "t": 116, "u": 117, "v": 118, "w": 119, "x": 120, "y": 121, "z": 122, "{": 123, "|": 124, "}": 125, "~": 126}
data modify storage std:vm char2str_map set value {"9":"\\t","10":"\\n","11":"\\x0b","12":"\\x0c","13":"\\r","32":" ","33":"!","34":"\\\"","35":"#","36":"$","37":"%","38":"&","39":"'","40":"(","41":")","42":"*","43":"+","44":",","45":"-","46":".","47":"/","48":"0","49":"1","50":"2","51":"3","52":"4","53":"5","54":"6","55":"7","56":"8","57":"9","58":":","59":";","60":"<","61":"=","62":">","63":"?","64":"@","65":"A","66":"B","67":"C","68":"D","69":"E","70":"F","71":"G","72":"H","73":"I","74":"J","75":"K","76":"L","77":"M","78":"N","79":"O","80":"P","81":"Q","82":"R","83":"S","84":"T","85":"U","86":"V","87":"W","88":"X","89":"Y","90":"Z","91":"[","92":"\\\\","93":"]","94":"^","95":"_","96":"`","97":"a","98":"b","99":"c","100":"d","101":"e","102":"f","103":"g","104":"h","105":"i","106":"j","107":"k","108":"l","109":"m","110":"n","111":"o","112":"p","113":"q","114":"r","115":"s","116":"t","117":"u","118":"v","119":"w","120":"x","121":"y","122":"z","123":"{","124":"|","125":"}","126":"~"}
# 编译器保留
data modify storage std:vm s0 set value {}
data modify storage std:vm s1 set value {}
data modify storage std:vm s2 set value {}
data modify storage std:vm s3 set value {}
data modify storage std:vm s4 set value {}
data modify storage std:vm s5 set value {}
data modify storage std:vm s6 set value {}
data modify storage std:vm int2str_pool set value []
data modify storage std:vm str2int_pool set value {}

# 准备内存
# 总内存 32MB，栈 64KB
data modify storage std:vm heap set value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
data modify storage std:vm heap append from storage std:vm heap[]
scoreboard players set rsp vm_regs 16384
