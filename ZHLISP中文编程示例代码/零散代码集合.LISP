;;;;学习交流www.lisp.vip
;;;;作者：陆志广

;;;九九乘法表
(计数循环 (x 9)
	(计数循环 (y 9)
		(如果真 (<= (1+ y) (1+ x))
			(格式 t "~d＊~d=~3d  " (1+ y) (1+ x) (* (1+ x) (1+ y)))))
	(格式 t "~%"))
	
;;;打开lisp程序时以GBK字符集模式打开，仅用于在wondows系统里更改为GBK即可。
;wx86cl64.exe -K CP936		;GBK字符集模式，在wondows系统里打开时这样行代就好。
;chcp						;显示代码页编号
;chcp 65001					;更改代码页编号
;wx86cl64.exe -K CP65001	;UTF-8字符集模式




;定义zhlisp
;(defmacro zhlisp (en zh help)
;	`(defmacro ,zh (&optional &body body)
;		,help
;		`(,',en ,@body)))

;打开
;(prompt-for-file "界面标题" :pathname "~/文名路径名/")

;保存
;(with-open-file (out (prompt-for-file "界面标题" :pathname "~/文名路径名/" :operation :save))
;  :direction :output
;  (format out "保存的文字数据"))