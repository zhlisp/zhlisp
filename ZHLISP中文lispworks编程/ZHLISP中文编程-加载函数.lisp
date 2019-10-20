(defmacro 界面 (名字)
"定义包界面名字，并进入定义的环境"
`(progn (defpackage ,名字
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,名字)))

(界面 中文LISP)

;;读代码

(defun zzhlisp (en zh help)
	`(defmacro ,zh (&optional &body body)
		,@help
		`(,',en ,@body)))

(defun zhlisp (&optional (filename "~/") (name "请打开'ZHLISP中文编程-函数数据.lisp'文件"))
	(with-open-file (in (prompt-for-file name :pathname filename))
		(when in
			(loop for line = (read in nil)
				while line do (when line
					(eval (zzhlisp (car line) (car (cdr line)) (cdr (cdr line)))))))))

(zhlisp)

(格式 t "世界，你好！")


;
;定义zhlisp
;(defmacro zhlisp (en zh help)
;	`(defmacro ,zh (&optional &body body)
;		,help
;		`(,',en ,@body)))
;		
;打开
;(prompt-for-file "界面标题" :pathname "~/文名路径名/")

;保存
;(with-open-file (out (prompt-for-file "界面标题" :pathname "~/文名路径名/" :operation :save))
;  :direction :output
;  (format out "保存的文字数据"))