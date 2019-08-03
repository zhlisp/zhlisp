(defmacro 界面 (名字)
"定义包界面名字，并进入定义的环境"
`(progn (defpackage ,名字
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,名字)))

(界面 中文LISP)

;;读代码
(with-open-file (in (prompt-for-file "请打开ZHLISP中文编程-函数数据.lisp文件" :pathname "D:/GitHub/zhlisp/ZHLISP中文lispworks编程/ZHLISP中文编程-函数数据.lisp"))
  (when in
    (loop for line = (read in nil)
          while line do (when line
(defmacro abc ()
`(defmacro ,(car line) (&optional &body body)
,(format nil "~A" (cdr (cdr line)))
(SYSTEM::BQ-LIST* (QUOTE ,(car (cdr line))) `(,@body))))(abc))
)))

;打开
;(prompt-for-file "lkjljlj" :pathname "~/Downloads/")

;保存
;(with-open-file (out (prompt-for-file "lkjljlj" :pathname "~/Downloads/" :operation :save))
;  :direction :output
;  (format out "abcdefg"))