(AND								与				"【与/and】如果所有的实参都为真，则返回最后一个实参的值。如果其中一个实参为假，所有实参都不会被求值，返回假")
;(ASSERT
;(CALL-METHOD
(CASE								如果符号		"【如果符号/case】后面跟多个符号，符号后是要执行的表达式")
;(CCASE
;(CHECK-TYPE
;(COMPILER-MACRO-FUNCTION
(COND								如果			"【如果/cond】后面跟多个判断条件，条件后是要执行的表达式")
;(CTYPECASE
(DECF								递减			"【递减/decf】;(decf x n)类似於;(setf x ;(- x n)的效果")
;(DECLAIM
;(DEFCLASS
(DEFCONSTANT						常量			"【常量/defconstant】定义一个全局常量")
;(DEFGENERIC
;(DEFINE-COMPILER-MACRO
;(DEFINE-CONDITION
;(DEFINE-METHOD-COMBINATION
;(DEFINE-MODIFY-MACRO
;(DEFINE-SETF-EXPANDER
;(DEFINE-SYMBOL-MACRO
(DEFMACRO							宏				"【宏/defmacro】用来定义一个宏")
;(DEFMETHOD
;(DEFPACKAGE
(DEFPARAMETER						全局变量		"【全局变量/defparameter】定义一个全局变量")
;(DEFSETF
(DEFSTRUCT							定义结构		"【定义结构/defstruct】定义一个结构体,第一个参数是结构类型,第二个参数是字段的名字")
;(DEFTYPE
(DEFUN								函数			"【函数/defun】定义新函数，三个参数，第一个函数名，第二个是一组用列表表示的实参，第三个是表达式")
(DEFVAR								空值全局变量	"【空值全局变量/defvar】定义一个全局变量但不指定值")
;(DESTRUCTURING-BIND
(DO									判断循环		"【判断循环/do】先判断后循环")
(DO*								判断循环*		"【判断循环*/do*】先判断后循环，可引用前面定义的变量")
;(DO-ALL-SYMBOLS
;(DO-EXTERNAL-SYMBOLS
(DOLIST								列表循环		"【列表循环/dolist】对第二个实参列表元素循环提取传入第一个实参变量中")
;(DO-SYMBOLS
(DOTIMES							计数循环		"【计数循环/dotimes】普通的计数循环函数，按数量递增循环")
;(ECASE
;(ETYPECASE
;(FORMATTER
;(GET-DISPATCH-MACRO-CHARACTER
;(GET-MACRO-CHARACTER
;(HANDLER-BIND
;(HANDLER-CASE
;(IGNORE-ERRORS
(INCF								递增			"【递增/incf】表达式;(incf x n)类似於;(setf x ;(+ x n))的效果")
(IN-PACKAGE							包内			"【包内/in-package】在包内包含的资源")
(LAMBDA								表达式			"【表达式/lambda】lambde是一个符号，创建没有名字一次性函数")
(LOOP								循环			"【循环/loop】功能很强大的通用循环函数，使用返回函数跳出循环")
;(LOOP-FINISH
(MACROEXPAND						完全展开宏		"【完全展开宏/macroexpand】查看宏的展开代码，并展开子宏代码")
(MACROEXPAND-1						展开宏			"【展开宏/macroexpand-1】查看宏的展开代码，只展开部分")
;(MACRO-FUNCTION
;(MAKE-DISPATCH-MACRO-CHARACTER
;(MULTIPLE-VALUE-BIND
;(MULTIPLE-VALUE-LIST
;(MULTIPLE-VALUE-SETQ
;(NTH-VALUE
(OR									或				"【或/or】求值参数如果遇到一个为真的就停止求值，并返回这个值，只有所有参数都为假才返回假。")
(POP								移除前			"【移除前/pop】将列表的第一个原子移除")
;(PPRINT-EXIT-IF-LIST-EXHAUSTED
;(PPRINT-LOGICAL-BLOCK
;(PPRINT-POP
;(PRINT-UNREADABLE-OBJECT
;(PROG
;(PROG*
;(PROG1
;(PROG2
;(PSETF
;(PSETQ
(PUSH								添加			"【添加/push】将第一个参数放到第二个列表参数的前面")
;(PUSHNEW
;(REMF
;(RESTART-BIND
;(RESTART-CASE
(RETURN								返回			"【返回/return】出口函数名字参数为nil时返回一个值并不再执行后面的代码")
(ROTATEF							交换			"【交换/rotatef】交换两个参数的值")
;(SET-DISPATCH-MACRO-CHARACTER
(SETF								赋值			"【赋值/setf】给全局或局部变量赋值，可隐式地创建全局变量。还可以是表达式，第二个值会替换第一个表达式中的变量")
;(SET-MACRO-CHARACTER
(SHIFTF								值左移			"【值左移/shiftf】将所有参数的值依次左移一个参数，返回第一个的值")
;(STEP
;(TIME
;(TRACE
;(TYPECASE
(UNLESS								如果假			"【如果假/unless】如果条件为假则执行后面的表达式,否则跳过")
;(UNTRACE
(WHEN								如果真			"【如果真/when】如果条件为真则执行后面的表达式,否则跳过")
;(WITH-ACCESSORS
;(WITH-COMPILATION-UNIT
;(WITH-CONDITION-RESTARTS
;(WITH-HASH-TABLE-ITERATOR
;(WITH-INPUT-FROM-STRING
(WITH-OPEN-FILE						打开文件		"【打开文件/with-open-file】打开文件执行完后自动关闭文件流")
;(WITH-OPEN-STREAM
;(WITH-OUTPUT-TO-STRING
;(WITH-PACKAGE-ITERATOR
;(WITH-SIMPLE-RESTART
;(WITH-SLOTS
(WITH-STANDARD-IO-SYNTAX			读写标准		"【读写标准/with-standard-io-syntax】确保读写内容格式兼容")