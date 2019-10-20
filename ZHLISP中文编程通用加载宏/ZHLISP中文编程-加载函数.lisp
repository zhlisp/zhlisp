wx86cl64.exe -K CP936
;chcp 65001
;wx86cl64.exe -K CP65001
;;读代码

(defun zzhlisp (en zh help)
	`(defmacro ,zh (&optional &body body)
		,@help
		`(,',en ,@body)))

(defun zhlisp (filename)
	(with-open-file (in filename)
		(when in
			(loop for line = (read in nil)
				while line do (when line
					(eval (zzhlisp (car line) (car (cdr line)) (cdr (cdr line)))))))))

(zhlisp "D:/GitHub/zhlisp/ZHLISP中文编程通用加载宏/ZHLISP中文编程-函数数据.lisp")

(格式 t "世界，你好！")
