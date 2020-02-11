(defvar *bao* nil)

(setf *bao* (loop for s being each external-symbol of :cl collect s))

(defun is-special (n)
	(not (not (search "SPECIAL" (format nil "~A~%" n)))))

(defun is-macro (n)
	(not (not (search "MACRO" (format nil "~A~%" n)))))

(defun is-function (n)
	(not (not (search "FUNCTION" (format nil "~A~%" n)))))

(defmacro abc ()
               (dolist (x *bao*) 
                 (cond 
				  ((not (eval `(fboundp ',x)))
					(format t "不是符号~10T~A~%" x))
                  ((is-special (eval `(function ,x)))
                   (format t "特殊操作符~10T~A~%" x))
                  ((is-macro (eval `(function ,x)))
                   (format t "宏~10T~A~%" x))
                  ((is-function (eval `(function ,x)))
                   (format t "函数~10T~A~%" x))
                  (t (format t "其它~10T~A~%" x)))))