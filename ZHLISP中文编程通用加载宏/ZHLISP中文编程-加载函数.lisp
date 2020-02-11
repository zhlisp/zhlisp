;;;;zhlisp中文字符定义和加载中文数据符号功能函数

;;;打开lisp程序时以GB2312字符集模式打开
;wx86cl64.exe -K CP936
;chcp						;显示代码页编号
;chcp 65001					;更改代码页编号
;wx86cl64.exe -K CP65001	;UTF-8字符集模式

;;;读取定义zhlisp宏或特殊操作符代码
(defun macro-special-lisp (en zh help)
	`(defmacro ,zh (&optional &body body)
		,@help
		`(,',en ,@body)))

;;;定义读取文件宏或特殊操作符代码，并将文件中的数据转为定义的宏代码执行
(defun ms-lisp (filename)
	(with-open-file (in filename)
		(when in
			(loop for line = (read in nil)
				while line do (when line
					(eval (macro-special-lisp (car line) (car (cdr line)) (cdr (cdr line)))))))))

;;;读取数据文件并执行
(ms-lisp "C:/Users/Administrator/Desktop/宏macro.lisp")
(ms-lisp "C:/Users/Administrator/Desktop/特殊操作符special.lisp")
;(ms-lisp "D:/zhlisp/ZHLISP中文编程通用加载宏/宏macro.lisp")
;(ms-lisp "D:/zhlisp/ZHLISP中文编程通用加载宏/特殊操作符special.lisp")

;;;读取定义zhlisp函数代码
(defun function-lisp (en zh)
	`(setf (symbol-function ',zh)
		(function ,en)))

;;;读取定义zhlisp全局变量代码
(defun variable-lisp (en zh)
	`(setf ,zh ,en))

;;;定义读取文件函数和全局变量代码，并将文件中的数据转为定义的函数和全局变量代码执行
(defun fv-lisp (fvlisp filename)
	(with-open-file (in filename)
		(when in
			(loop for line = (read in nil)
				while line do (when line
					(eval (funcall fvlisp (car line) (car (cdr line)))))))))

;;;读取数据文件并执行
(fv-lisp #'function-lisp "C:/Users/Administrator/Desktop/函数function.lisp")
(fv-lisp #'variable-lisp "C:/Users/Administrator/Desktop/全局变量variable.lisp")
;(fv-lisp #'function-lisp "D:/zhlisp/ZHLISP中文编程通用加载宏/函数function.lisp")
;(fv-lisp #'variable-lisp "D:/zhlisp/ZHLISP中文编程通用加载宏/全局变量variable.lisp")

;;;定义部分中文符号等同英文符号，冒号、句号、单引号、分号
(set-macro-character #\： (get-macro-character #\:))
(set-macro-character #\。 (get-macro-character #\"))
(set-macro-character #\‘ (get-macro-character #\'))
(set-macro-character #\； (get-macro-character #\;))

;;;定义中文小括号效果等同英文小括号效果
(set-macro-character #\） (get-macro-character #\)))

(set-macro-character #\（ 
	#'(lambda (stream char)
		(let ((pair (read-delimited-list #\） stream)))
			(eval (list 'quote pair)))))
			
;;;函数示例,(format t "世界，你好！")
（格式 T 。世界，你好！。）