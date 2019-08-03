
;;;定义宏变量功能
(defmacro with-gensyms ((&rest names) &body body)
              `(let ,(loop for n in names collect `(,n (gensym)))
                 ,@body))
