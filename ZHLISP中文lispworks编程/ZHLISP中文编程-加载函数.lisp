(defmacro ���� (����)
"������������֣������붨��Ļ���"
`(progn (defpackage ,����
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,����)))

(���� ����LISP)

;;������
(with-open-file (in (prompt-for-file "���ZHLISP���ı��-��������.lisp�ļ�" :pathname "D:/GitHub/zhlisp/ZHLISP����lispworks���/ZHLISP���ı��-��������.lisp"))
  (when in
    (loop for line = (read in nil)
          while line do (when line
(defmacro abc ()
`(defmacro ,(car line) (&optional &body body)
,(format nil "~A" (cdr (cdr line)))
(SYSTEM::BQ-LIST* (QUOTE ,(car (cdr line))) `(,@body))))(abc))
)))

;��
;(prompt-for-file "lkjljlj" :pathname "~/Downloads/")

;����
;(with-open-file (out (prompt-for-file "lkjljlj" :pathname "~/Downloads/" :operation :save))
;  :direction :output
;  (format out "abcdefg"))