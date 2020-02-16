;(-
;(*
;(/
;(/=
;(+
;(<
;(<=
;(=
;(>
;(>=
;(1-
;(1+
;(ABORT
;(ABS
;(ACONS
;(ACOS
;(ACOSH
;(ADD-METHOD
;(ADJOIN
;(ADJUSTABLE-ARRAY-P
;(ADJUST-ARRAY
;(ALLOCATE-INSTANCE
;(ALPHA-CHAR-P
;(ALPHANUMERICP
(APPEND									拼接			"【拼接/append】将任意数量的列表串接成一个新列表")
(APPLY									函数调用列表	"【函数调用列表/apply】接受一个函数和实参列表，返回把传入函数应用在实参列表的结果，可以是任意数量的实参，但最后一个要是列表")
;(APROPOS
;(APROPOS-LIST
(AREF									取数组			"【取数组/aref】取出数组内的元素,是零索引的")
;(ARRAY-DIMENSION
;(ARRAY-DIMENSIONS
;(ARRAY-DISPLACEMENT
;(ARRAY-ELEMENT-TYPE
;(ARRAY-HAS-FILL-POINTER-P
;(ARRAY-IN-BOUNDS-P
;(ARRAYP
;(ARRAY-RANK
;(ARRAY-ROW-MAJOR-INDEX
;(ARRAY-TOTAL-SIZE
(ASH									移位			"【移位/ash】相当于小数点的位置移动")
;(ASIN
;(ASINH
(ASSOC									关联列表		"【关联列表/assoc】用来取出在关联列表中，与给定的键值有关联的cons对")
;(ASSOC-IF
;(ASSOC-IF-NOT
;(ATAN
;(ATANH
;(ATOM
;(BIT
;(BIT-AND
;(BIT-ANDC1
;(BIT-ANDC2
;(BIT-EQV
;(BIT-IOR
;(BIT-NAND
;(BIT-NOR
;(BIT-NOT
;(BIT-ORC1
;(BIT-ORC2
;(BIT-VECTOR-P
;(BIT-XOR
;(BOOLE
;(BOTH-CASE-P
(BOUNDP									判断变量		"【判断变量/boundp】检查某些符号是否为全局变量或常量")
(BREAK									断点			"【断点/break】插入断点，让程序暂停执行，以便查看参数，常用于程序调试")
;(BROADCAST-STREAM-STREAMS
;(BUTLAST
;(BYTE
;(BYTE-POSITION
;(BYTE-SIZE
;(CAAAAR
;(CAAADR
;(CAAAR
;(CAADAR
;(CAADDR
;(CAADR
;(CAAR
;(CADAAR
;(CADADR
;(CADAR
;(CADDAR
;(CADDDR
;(CADDR
;(CADR
(CAR									前				"【前/car】取出列表最前面一个元素的基出函数")
;(CDAAAR
;(CDAADR
;(CDAAR
;(CDADAR
;(CDADDR
;(CDADR
;(CDAR
;(CDDAAR
;(CDDADR
;(CDDAR
;(CDDDAR
;(CDDDDR
;(CDDDR
;(CDDR
(CDR									后				"【后/cdr】取出列表除最前面一个元素后面的元素")
(CEILING								最小整数		"【最小整数/ceiling】返回列表中的最小整数")
;(CERROR
;(CHANGE-CLASS
(CHAR									字符			"【字符/char】取出字符串中的一个字符")
(CHAR/=									字符/=			"【字符/=/char/=】判断两个字符是否不相等")
(CHAR<									字符<			"【字符</char<】判断第一个字符是否小于第二个字符")
(CHAR<=									字符<=			"【字符<=/char<=】判断第一个字符是否小于等于第二个字符")
(CHAR=									字符=			"【字符=/char=】判断两个字符是否相等")
(CHAR>									字符>			"【字符>/char>】判断第一个字符是否大于第二个字符")
(CHAR>=									字符>=			"【字符>=/char>=】判断第一个字符是否大于等于第二个字符")
;(CHARACTER
;(CHARACTERP
(CHAR-CODE								字符编码		"【字符编码/char-code】返回字符的数字编码")
;(CHAR-DOWNCASE
(CHAR-EQUAL								松字符=			"【松字符=/CHAR-EQUAL】判断两个字符是否相等，不区分大小写")
(CHAR-GREATERP							松字符>			"【松字符>/CHAR-GREATERP】判断第一个字符是否大于第二个字符，不区分大小写")
;(CHAR-INT
(CHAR-LESSP								松字符<			"【松字符</CHAR-LESSP】判断第一个字符是否小于第二个字符，不区分大小写")
;(CHAR-NAME
(CHAR-NOT-EQUAL							松字符/=		"【松字符/=/CHAR-NOT-EQUAL】判断两个字符是否不相等，不区分大小写")
(CHAR-NOT-GREATERP						松字符<=		"【松字符<=/CHAR-NOT-GREATERP】判断第一个字符是否小于等于第二个字符，不区分大小写")
(CHAR-NOT-LESSP							松字符>=		"【松字符>=/CHAR-NOT-LESSP】判断第一个字符是否大于等于第二个字符，不区分大小写")
;(CHAR-UPCASE
;(CIS
;(CLASS-NAME
;(CLASS-OF
;(CLEAR-INPUT
;(CLEAR-OUTPUT
(CLOSE									关				"【关/close】打开一个文件后，要使用这个函数关闭文件")
;(CLRHASH
(CODE-CHAR								编码字符		"【编码字符/code-char】返回数字编码的字符")
;(COERCE
;(COMPILE
;(COMPILED-FUNCTION-P
(COMPILE-FILE							编译			"【编译/compile-file】将源码编译进二进制文件，加载和执行更快")
;(COMPILE-FILE-PATHNAME
(COMPLEMENT								补集			"【补集/complement】")
;(COMPLEX
;(COMPLEXP
;(COMPUTE-APPLICABLE-METHODS
;(COMPUTE-RESTARTS
(CONCATENATE							连接		"【连接/concatenate】将多个元素拼接成一个，但要指明类型")
;(CONCATENATED-STREAM-STREAMS
;(CONJUGATE
(CONS									点对			"【点对/cons】根据传入的参数构造一个新列表")
;(CONSP
;(CONSTANTLY
;(CONSTANTP
;(CONTINUE
;(COPY-ALIST
(COPY-LIST								复制列表		"【复制列表/copy-list】返回一个列表的副本")
;(COPY-PPRINT-DISPATCH
;(COPY-READTABLE
;(COPY-SEQ
;(COPY-STRUCTURE
;(COPY-SYMBOL
(COPY-TREE								复制树			"【复制树/copy-tree】返回一个树的副本")
;(COS
;(COSH
;(COUNT
;(COUNT-IF
;(COUNT-IF-NOT
;(DECODE-FLOAT
;(DECODE-UNIVERSAL-TIME
;(DELETE
;(DELETE-DUPLICATES
;(DELETE-FILE
;(DELETE-IF
;(DELETE-IF-NOT
;(DELETE-PACKAGE
;(DENOMINATOR
;(DEPOSIT-FIELD
;(DESCRIBE
;(DESCRIBE-OBJECT
;(DIGIT-CHAR
;(DIGIT-CHAR-P
;(DIRECTORY
;(DIRECTORY-NAMESTRING
(DISASSEMBLE							汇编			"【汇编/disassemble】返回函数的汇编代码")
(DOCUMENTATION							函数说明		"【函数说明/documentation】取出函数的说明文本;(documentation '格式 'function)")
;(DPB
;(DRIBBLE
;(ECHO-STREAM-INPUT-STREAM
;(ECHO-STREAM-OUTPUT-STREAM
;(ED
;(EIGHTH
;(ELT
;(ENCODE-UNIVERSAL-TIME
;(ENDP
;(ENOUGH-NAMESTRING
;(ENSURE-DIRECTORIES-EXIST
;(ENSURE-GENERIC-FUNCTION
(EQ										同样			"【同样/eq】判断两个参数的指针是否相同，也就是不是同一个数据")
(EQL									相同			"【相同/eql】比较两个参数的是否相等")
(EQUAL									内同			"【内同/equal】判断显示的内容是否相同")
(EQUALP									意同			"【意同/equalp】判断显示的内容相同，不区分大小写")
;(ERROR
(EVAL									求值			"【求值/eval】对引用的表达式进行求值")
(EVENP									偶数			"【偶数/evenp】判断参数是否是偶数")
;(EVERY
;(EXP
;(EXPORT
(EXPT									次方			"【次方/EXPT】求值第一个参数的第二个参数次方")
;(FBOUNDP
;(FCEILING
;(FDEFINITION
;(FFLOOR
;(FIFTH
;(FILE-AUTHOR
;(FILE-LENGTH
;(FILE-NAMESTRING
;(FILE-POSITION
;(FILE-STRING-LENGTH
;(FILE-WRITE-DATE
;(FILL
;(FILL-POINTER
;(FIND
;(FIND-ALL-SYMBOLS
;(FIND-CLASS
(FIND-IF								函数真			"【函数真/FIND-IF】函数结果为真时返回值，为假时不返回")
;(FIND-IF-NOT
;(FIND-METHOD
;(FIND-PACKAGE
;(FIND-RESTART
;(FIND-SYMBOL
;(FINISH-OUTPUT
(FIRST									前元素			"【前元素/FIRST】返回列表的第一个元素")
;(FLOAT
;(FLOAT-DIGITS
;(FLOATP
;(FLOAT-PRECISION
;(FLOAT-RADIX
;(FLOAT-SIGN
(FLOOR									最大整数		"【最大整数/floor】返回列表中的最大整数")
;(FMAKUNBOUND
(FORCE-OUTPUT							强制输出		"【强制输出/force-output】输出内容到数据流")
(FORMAT									格式			"【格式/format】格式化字符串，第一个参数表示文本输出位置，第二个是字符模板，第三个是插入到字符串里的变量")
;(FOURTH
(FRESH-LINE								换行			"【换行/fresh-line】输出一个换行命令")
;(FROUND
;(FTRUNCATE
(FUNCALL								函数调用		"【函数调用/funcall】接受一个函数和实参列表，返回把传入函数应用在实参列表的结果，是任意数量的实参，最后一个不必是列表")
;(FUNCTION-KEYWORDS
;(FUNCTION-LAMBDA-EXPRESSION
;(FUNCTIONP
;(GCD
(GENSYM									符号			"【符号/gensym】在宏里面生成一个随机变量符号")
;(GENTEMP
;(GET
;(GET-DECODED-TIME
(GETF									读符号值		"【读符号值/getf】读取和关键字符号关联的值")
(GETHASH								取哈希表		"【取哈希表/gethash】传入一个键值和哈希表,如果没有返回nil")
;(GET-INTERNAL-RUN-TIME
;(GET-OUTPUT-STREAM-STRING
;(GET-PROPERTIES
;(GET-SETF-EXPANSION
(GET-UNIVERSAL-TIME						当前时间		"【当前时间/get-universal-time】将当前时间以整数形式返回")
;(GRAPHIC-CHAR-P
;(HASH-TABLE-COUNT
;(HASH-TABLE-P
;(HASH-TABLE-REHASH-SIZE
;(HASH-TABLE-REHASH-THRESHOLD
;(HASH-TABLE-SIZE
;(HASH-TABLE-TEST
;(HOST-NAMESTRING
;(IDENTITY
;(IMAGPART
;(IMPORT
;(INITIALIZE-INSTANCE
;(INPUT-STREAM-P
;(INSPECT
;(INTEGER-DECODE-FLOAT
;(INTEGER-LENGTH
;(INTEGERP
;(INTERACTIVE-STREAM-P
;(INTERN
(INTERSECTION							交集			"【交集/intersection】")
;(INVALID-METHOD-ERROR
;(INVOKE-DEBUGGER
;(INVOKE-RESTART
;(INVOKE-RESTART-INTERACTIVELY
;(ISQRT
;(KEYWORDP
(LAST									最后			"【最后/last】返回列表的最后一个对象")
;(LCM
;(LDB
;(LDB-TEST
;(LDIFF
(LENGTH									长度			"【长度/length】返回传入列表的长度也就是元素数量")
;(LISP-IMPLEMENTATION-TYPE
;(LISP-IMPLEMENTATION-VERSION
(LIST									列表			"【列表/list】将传入的参数构建成一个新列表")
;(LIST*
;(LIST-ALL-PACKAGES
;(LISTEN
;(LIST-LENGTH
(LISTP									判断列表		"【判断列表/listp】判断传入参数是否是一个列表")
(LOAD									加载			"【加载/load】加载一个程序文件并按照文件内容执行程序")
;(LOAD-LOGICAL-PATHNAME-TRANSLATIONS
;(LOG
;(LOGAND
;(LOGANDC1
;(LOGANDC2
;(LOGBITP
;(LOGCOUNT
;(LOGEQV
;(LOGICAL-PATHNAME
;(LOGICAL-PATHNAME-TRANSLATIONS
;(LOGIOR
;(LOGNAND
;(LOGNOR
;(LOGNOT
;(LOGORC1
;(LOGORC2
;(LOGTEST
;(LOGXOR
;(LONG-SITE-NAME
;(LOWER-CASE-P
;(MACHINE-INSTANCE
;(MACHINE-TYPE
;(MACHINE-VERSION
(MAKE-ARRAY								数组			"【数组/make-array】第一个实参为一个指定数组维度的列表")
;(MAKE-BROADCAST-STREAM
;(MAKE-CONCATENATED-STREAM
;(MAKE-CONDITION
;(MAKE-ECHO-STREAM
(MAKE-HASH-TABLE						哈希表			"【哈希表/make-hash-table】构造一个哈希表,不需要传入参数")
;(MAKE-INSTANCE
;(MAKE-INSTANCES-OBSOLETE
;(MAKE-LIST
;(MAKE-LOAD-FORM
;(MAKE-LOAD-FORM-SAVING-SLOTS
;(MAKE-PACKAGE
;(MAKE-PATHNAME
;(MAKE-RANDOM-STATE
;(MAKE-SEQUENCE
;(MAKE-STRING
;(MAKE-STRING-INPUT-STREAM
;(MAKE-STRING-OUTPUT-STREAM
;(MAKE-SYMBOL
;(MAKE-SYNONYM-STREAM
;(MAKE-TWO-WAY-STREAM
;(MAKUNBOUND
;(MAP
;(MAPC
;(MAPCAN
(MAPCAR									映射函数		"【映射函数/mapcar】接受一个函数以及一个或多个列表,并返回把函数应用至每个列表的元素的结果,直到有的列表没有元素为止")
;(MAPCON
;(MAPHASH
;(MAP-INTO
;(MAPL
(MAPLIST								渐进映射函数	"【渐进映射函数/maplist】接受一个函数以及一个或多个列表,将列表渐进的下一个[后]命令将结果传入函数")
;(MASK-FIELD
(MAX									最大值			"【最大值/max】返回参数的值最大的一个")
;(MEMBER
;(MEMBER-IF
;(MEMBER-IF-NOT
;(MERGE
;(MERGE-PATHNAMES
;(METHOD-COMBINATION-ERROR
;(METHOD-QUALIFIERS
(MIN									最小值			"【最小值/min】返回参数的值最小的一个")
(MINUSP									小于零			"【小于零/MINUSP】判断传入参数是否小于零")
;(MISMATCH
(MOD									模				"【模/mod】返回两个实数截断相除得到的模")
;(MUFFLE-WARNING
;(NAME-CHAR
;(NAMESTRING
;(NBUTLAST
;(NCONC
;(NINTERSECTION
;(NINTH
;(NO-APPLICABLE-METHOD
;(NO-NEXT-METHOD
(NOT									非				"【非/not】对实参逻辑结果取反")
;(NOTANY
;(NOTEVERY
;(NRECONC
;(NREVERSE
;(NSET-DIFFERENCE
;(NSET-EXCLUSIVE-OR
;(NSTRING-CAPITALIZE
;(NSTRING-DOWNCASE
;(NSTRING-UPCASE
;(NSUBLIS
;(NSUBST
;(NSUBST-IF
;(NSUBST-IF-NOT
;(NSUBSTITUTE
;(NSUBSTITUTE-IF
;(NSUBSTITUTE-IF-NOT
(NTH									找到			"【找到/nth】在第二个参数列表中找到第一个参数位置的原子,零索引")
(NTHCDR									找到后			"【找到后/nthcdr】在第二个参数列表中除第一个原子里找到第一个参数位置的原子,零索引")
(NULL									空表判断		"【空表判断/null】如果实参是一个空表则返回真")
(NUMBERP								是否数字		"【是否数字/numberp】对参数进行断判是不是数字")
;(NUMERATOR
;(NUNION
(ODDP									奇数			"【奇数/oddp】判断参数是否是奇数")
(OPEN									打开			"【打开/open】打开一个文件，读取或写入内容")
;(OPEN-STREAM-P
;(OUTPUT-STREAM-P
;(PACKAGE-NAME
;(PACKAGE-NICKNAMES
;(PACKAGEP
;(PACKAGE-SHADOWING-SYMBOLS
;(PACKAGE-USED-BY-LIST
;(PACKAGE-USE-LIST
;(PAIRLIS
(PARSE-INTEGER							解析整数		"【解析整数/parse-integer】将内容转换为整数")
;(PARSE-NAMESTRING
;(PATHNAME
;(PATHNAME-DEVICE
;(PATHNAME-DIRECTORY
;(PATHNAME-HOST
;(PATHNAME-MATCH-P
;(PATHNAME-NAME
;(PATHNAMEP
;(PATHNAME-TYPE
;(PATHNAME-VERSION
;(PEEK-CHAR
;(PHASE
(PLUSP									大于零			"【大于零/PLUSP】判断传入参数是否大于零")
;(POSITION
;(POSITION-IF
;(POSITION-IF-NOT
(PPRINT									美打			"【美打/pprint】将代码调整缩进后打印到屏幕上")
;(PPRINT-DISPATCH
;(PPRINT-FILL
;(PPRINT-INDENT
;(PPRINT-LINEAR
;(PPRINT-NEWLINE
;(PPRINT-TAB
;(PPRINT-TABULAR
(PRIN1									表达式打印		"【表达式打印/prin1】打印表达式到屏幕，无空格和换行")
;(PRIN1-TO-STRING
(PRINC									文本打印		"【文本打印/princ】打印出可阅读文本内容到屏幕")
;(PRINC-TO-STRING
(PRINT									打印			"【打印/print】打印出文本内容到屏幕")
;(PRINT-OBJECT
;(PROBE-FILE
;(PROCLAIM
;(PROVIDE
(RANDOM									随机数			"【随机数/random】生成n以内的随机数")
;(RANDOM-STATE-P
;(RASSOC
;(RASSOC-IF
;(RASSOC-IF-NOT
;(RATIONAL
;(RATIONALIZE
;(RATIONALP
(READ									读				"【读/read】读入用户输入的值")
(READ-BYTE								读字节			"【读字节/read-byte】读取字节命令")
(READ-CHAR								读字			"【读字/read-char】读取一个字母命令")
;(READ-CHAR-NO-HANG
;(READ-DELIMITED-LIST
;(READ-FROM-STRING
(READ-LINE								读行			"【读行/read-line】读取一行文本")
;(READ-PRESERVING-WHITESPACE
;(READ-SEQUENCE
;(READTABLE-CASE
;(READTABLEP
;(REALP
;(REALPART
;(REDUCE
;(REINITIALIZE-INSTANCE
(REM									余数			"【余数/rem】返回两个实数截断相除得到的余数")
;(REMHASH
(REMOVE									移除值			"【移除值/remove】返回第二个列表中所有不包含第一个参数的值的新列表")
;(REMOVE-DUPLICATES
(REMOVE-IF								匹配删除		"【匹配删除/remove-if】将符合条件的元素删除")
(REMOVE-IF-NOT							不匹配删除		"【不匹配删除/remove-if-not】将不符合条件的元素删除")
;(REMOVE-METHOD
;(REMPROP
;(RENAME-FILE
;(RENAME-PACKAGE
;(REPLACE
;(REQUIRE
(REST									后元素			"【后元素/REST】返回除列表的第一个元素之外的所有元素")
;(RESTART-NAME
;(REVAPPEND
(REVERSE								倒序			"【倒序/reverse】返回与其参数相同元素的一个序列,但顺序颠倒")
;(ROOM
(ROUND									舍入偶数		"【舍入偶数/ROUND】四舍五入到最接近的偶数")
;(ROW-MAJOR-AREF
;(RPLACA
;(RPLACD
;(SBIT
;(SCALE-FLOAT
;(SCHAR
;(SEARCH
;(SECOND
;(SET
;(SET-DIFFERENCE
;(SET-EXCLUSIVE-OR
;(SET-PPRINT-DISPATCH
;(SET-SYNTAX-FROM-CHAR
;(SEVENTH
;(SHADOW
;(SHADOWING-IMPORT
;(SHARED-INITIALIZE
;(SHORT-SITE-NAME
;(SIGNAL
;(SIGNUM
;(SIMPLE-BIT-VECTOR-P
;(SIMPLE-STRING-P
;(SIMPLE-VECTOR-P
;(SIN
;(SINH
;(SIXTH
(SLEEP									延时			"【延时/sleep】暂停一段时间后执行后面的命令，单位是秒")
;(SLOT-BOUNDP
;(SLOT-EXISTS-P
;(SLOT-MAKUNBOUND
;(SLOT-MISSING
;(SLOT-UNBOUND
;(SLOT-VALUE
;(SOFTWARE-TYPE
;(SOFTWARE-VERSION
;(SOME
(SORT									排序			"【排序/sort】它接受一个序列及一个比较两个参数的函数，返回一个有同样元素的序列，根据比较函数来排序，注意它是破坏性的")
;(SQRT
;(STABLE-SORT
;(STANDARD-CHAR-P
;(STORE-VALUE
;(STREAM-ELEMENT-TYPE
;(STREAM-EXTERNAL-FORMAT
;(STREAMP
;(STRING
(STRING/=								文本/=			"【文本/=/STRING/=】判断两个文本字符串是否不相等")
(STRING<								文本<			"【文本</STRING<】判断第一个文本字符串是否小于第二个文本字符串")
(STRING<=								文本<=			"【文本<=/STRING<=】判断第一个文本字符串是否小于等于第二个文本字符串")
(STRING=								文本=			"【文本=/STRING=】判断两个文本字符串是否相等")
(STRING>								文本>			"【文本>/STRING>】判断第一个文本字符串是否大于第二个文本字符串")
(STRING>=								文本>=			"【文本>=/STRING>=】判断第一个文本字符串是否大于等于第二个文本字符串")
;(STRING-CAPITALIZE
;(STRING-DOWNCASE
(STRING-EQUAL							松文本=			"【松文本=/STRING-EQUAL】判断两个文本字符串是否相等,不区分大小写")
(STRING-GREATERP						松文本>			"【松文本>/STRING-GREATERP】判断第一个文本字符串是否大于第二个文本字符串,不区分大小写")
;(STRING-LEFT-TRIM
(STRING-LESSP							松文本<			"【松文本</STRING-LESSP】判断第一个文本字符串是否小于第二个文本字符串,不区分大小写")
(STRING-NOT-EQUAL						松文本/=		"【松文本/=/STRING-NOT-EQUAL】判断两个文本字符串是否不相等,不区分大小写")
(STRING-NOT-GREATERP					松文本<=		"【松文本<=/STRING-NOT-GREATERP】判断第一个文本字符串是否小于等于第二个文本字符串,不区分大小写")
(STRING-NOT-LESSP						松文本>=		"【松文本>=/STRING-NOT-LESSP】判断第一个文本字符串是否大于等于第二个文本字符串,不区分大小写")
;(STRINGP
;(STRING-RIGHT-TRIM
;(STRING-TRIM
;(STRING-UPCASE
;(SUBLIS
(SUBSEQ									文本提取		"【文本提取/subseq】提取部分文本,零索引,如果省略第三个参数,则将字符串的其余部分放到最后")
;(SUBSETP
(SUBST									替换树原子		"【替换树原子/subst】在第三个列表中用第一个参数替换列表中所有的第二个参数")
;(SUBST-IF
;(SUBST-IF-NOT
(SUBSTITUTE								替换序列原子	"【替换序列原子/substitute】替换序列中的原子")
;(SUBSTITUTE-IF
;(SUBSTITUTE-IF-NOT
;(SUBTYPEP
(SVREF									取向量			"【取向量/svref】取出向量的一个值")
;(SXHASH
;(SYMBOL-FUNCTION
;(SYMBOL-NAME
;(SYMBOLP
;(SYMBOL-PACKAGE
;(SYMBOL-PLIST
;(SYMBOL-VALUE
;(SYNONYM-STREAM-SYMBOL
;(TAILP
;(TAN
;(TANH
;(TENTH
;(TERPRI
;(THIRD
;(TRANSLATE-LOGICAL-PATHNAME
;(TRANSLATE-PATHNAME
;(TREE-EQUAL
;(TRUENAME
(TRUNCATE								向零整数		"【向零整数/TRUNCATE】向零方向对浮点数取整数")
;(TWO-WAY-STREAM-INPUT-STREAM
;(TWO-WAY-STREAM-OUTPUT-STREAM
;(TYPE-OF
(TYPEP									判断类型		"【判断类型/typep】接受一个对象和一个类型，判断对象是否为该类型")
;(UNEXPORT
;(UNINTERN
(UNION									并集			"【并集/union】")
;(UNREAD-CHAR
;(UNUSE-PACKAGE
;(UPDATE-INSTANCE-FOR-DIFFERENT-CLASS
;(UPDATE-INSTANCE-FOR-REDEFINED-CLASS
;(UPGRADED-ARRAY-ELEMENT-TYPE
;(UPGRADED-COMPLEX-PART-TYPE
;(UPPER-CASE-P
;(USE-PACKAGE
;(USER-HOMEDIR-PATHNAME
;(USE-VALUE
;(VALUES
;(VALUES-LIST
(VECTOR									向量			"【向量/vector】构建的一维数组称为向量")
;(VECTORP
;(VECTOR-POP
;(VECTOR-PUSH
;(VECTOR-PUSH-EXTEND
;(WARN
;(WILD-PATHNAME-P
;(WRITE
;(WRITE-BYTE
;(WRITE-CHAR
;(WRITE-LINE
;(WRITE-SEQUENCE
;(WRITE-STRING
;(WRITE-TO-STRING
(YES-OR-NO-P							是否全称		"【是否全称/YES-OR-NO-P】提示输入是否并执行判断结果，全称函数")
(Y-OR-N-P								是否			"【是否/y-or-n-p】提示输入是否并执行判断结果")
(ZEROP									等于零			"【等于零/ZEROP】判断参数是否等于零")