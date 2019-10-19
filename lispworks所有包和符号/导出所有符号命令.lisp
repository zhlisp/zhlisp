;;www.lisp.vip;;

(defun save-db (db filename)
   (with-open-file (out filename
                        :direction :output
                        :if-exists :supersede)
      (format out "~{~A~%~}" db)))
				
(save-db (loop for s being each external-symbol of :cl collect s) "~/导出符号.lisp")