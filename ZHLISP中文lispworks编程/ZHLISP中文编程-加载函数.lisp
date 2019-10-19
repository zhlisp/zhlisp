(defmacro 界面 (名字)
"定义包界面名字，并进入定义的环境"
`(progn (defpackage ,名字
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,名字)))

(界面 中文LISP)

;;读代码
(defun zhlisp (filename &optional (name "请打开'ZHLISP中文编程-函数数据.lisp'文件"))
	(with-open-file (in (prompt-for-file name :pathname filename))
		(when in
			(loop for line = (read in nil)
				while line do (when line
					(defmacro zzhlisp ()
					`(defmacro ,(car (cdr line)) (&optional &body body)
						,(format nil "~A" (cdr (cdr line)))
						`(,',(car line) ,@body)))
					(zzhlisp))))))

(zhlisp "C:/lisp/zhlisp/ZHLISP中文lispworks编程/ZHLISP中文编程-函数数据.lisp" "中文编程")





;定义zhlisp
;(defmacro zhlisp (zh en help)
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