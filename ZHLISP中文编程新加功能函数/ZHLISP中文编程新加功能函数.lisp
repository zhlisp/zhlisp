
;;;定义宏变量功能
(defmacro 宏变量 ((&rest names) &body body)
              `(let ,(loop for n in names collect `(,n (gensym)))
                 ,@body))
