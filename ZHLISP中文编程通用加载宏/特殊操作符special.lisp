(BLOCK					出口			"【出口/block】指定一个出口的名字，以便参数停止求值并返回出口值")
;(CATCH
;(EVAL-WHEN
;(FLET
(FUNCTION				函数对象		"【函数对象/function】传入形参一个函数名，返回函数对像")
;(GO
(IF						判断			"【判断/if】判断第一个参数的逻辑值	，为真求值第二个，为假求值第三个")
(LABELS					局部函数		"【局部函数/labels】定义一个局部函数")
(LET					变量			"【变量/let】定义一个局部变量")
(LET*					变量*			"【变量*/let*】定义一个局部变量，并可以定时时调用已定义的变量")
;(LOAD-TIME-VALUE
;(LOCALLY
;(MACROLET
(MULTIPLE-VALUE-CALL	返回多值		"【返回多值/MULTIPLE-VALUE-CALL】返回多个值")
;(MULTIPLE-VALUE-PROG1
(PROGN					依序求值		"【依序求值/progn】接受任意数量的表达式，依序求值并返回最后一个表达式的值")
;(PROGV
(QUOTE					引用			"【引用/quote】保持表达式或值不变，原样返回")
(RETURN-FROM			返回出口		"【返回出口/return-from】返回指定出口并返回一个值")
(SETQ					变量赋值		"【变量赋值/setq】只能给变量赋值")
;(SPECIAL-OPERATOR-P
;(SYMBOL-MACROLET
;(TAGBODY
;(THE
;(THROW
;(UNWIND-PROTECT