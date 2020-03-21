;;;;zhlisp中文字符定义和加载中文数据符号功能函数
;;windows下需要把“ZHLISP中文编程通用加载宏”文件夹下的文件编码由UTF-8转为ANSI才能识别加载，其它操作系统不需要转码。
;;;在lispworks下添加UI界面功能时使用，其它实现不需要加载下面2个函数
#+lispworks
(defmacro 界面 (名字)
"定义包界面名字，并进入定义的环境"
  `(progn (defpackage ,名字
            (:add-use-defaults t)
            (:use "CAPI"))
     (in-package ,名字)))

#+lispworks
(界面 中文LISP)


;(load "/home/love/git/zhlisp/ZHLISP中文编程通用加载宏/ZHLISP中文编程-加载函数.lisp")
;;;读取定义zhlisp宏或特殊操作符代码，不是lispworks的实现从这里开始加载函数
(defun macro-special-lisp (en zh help)
  `(defmacro ,zh (&optional &body body)
     ,@help
     `(,',en ,@body)))

;;;定义读取文件宏或特殊操作符代码，并将文件中的数据转为定义的宏代码执行
(defun ms-lisp (filename)
  (with-open-file (in filename)
    (when in
      (loop for line = (read in nil)
            while line do (when line
                            (eval (macro-special-lisp (car line) (car (cdr line)) (cdr (cdr line)))))))))

;;;读取定义zhlisp函数代码
(defun function-lisp (en zh)
  `(setf (symbol-function ',zh)
         (function ,en)))

;;;读取定义zhlisp全局变量代码
(defun variable-lisp (en zh)
  `(setf ,zh ,en))

;;;定义读取文件函数和全局变量代码，并将文件中的数据转为定义的函数和全局变量代码执行
(defun fv-lisp (fvlisp filename)
  (with-open-file (in filename)
    (when in
      (loop for line = (read in nil)
            while line do (when line
                            (eval (funcall fvlisp (car line) (car (cdr line)))))))))

;;;定义部分中文符号等同英文符号，冒号、单引号、分号
(set-macro-character #\： (get-macro-character #\:))
(set-macro-character #\‘ (get-macro-character #\'))
(set-macro-character #\； (get-macro-character #\;))

;;;定义中文小括号效果等同英文小括号效果
(set-macro-character #\） (get-macro-character #\)))

(set-macro-character #\（ 
                     #'(lambda (stream char)
                         (let ((pair (read-delimited-list #\） stream)))
                           (eval (list 'quote pair)))))


;;;lispworks下根据弹窗提示读取数据文件并执行，注意下面是5个函数。
#+lispworks
(or
	(ms-lisp (prompt-for-file "请打开'宏macro.lisp'文件" :pathname "~/"))
	(ms-lisp (prompt-for-file "请打开'特殊操作符special.lisp'文件" :pathname "~/"))
	(fv-lisp #'function-lisp (prompt-for-file "请打开'函数function.lisp'文件" :pathname "~/"))
	(fv-lisp #'variable-lisp (prompt-for-file "请打开'全局变量variable.lisp'文件" :pathname "~/"))
	(fv-lisp #'function-lisp (prompt-for-file "请打开'UI界面-CAPI.lisp'文件" :pathname "~/")))


;;;其它实现根据数据文件位置修改代码，读取数据文件并执行，注意下面是4个函数。
#-lispworks
(or
	(ms-lisp "/home/love/git/zhlisp/ZHLISP中文编程通用加载宏/宏macro.lisp")
	(ms-lisp "/home/love/git/zhlisp/ZHLISP中文编程通用加载宏/特殊操作符special.lisp")
	(fv-lisp #'function-lisp "/home/love/git/zhlisp/ZHLISP中文编程通用加载宏/函数function.lisp")
	(fv-lisp #'variable-lisp "/home/love/git/zhlisp/ZHLISP中文编程通用加载宏/全局变量variable.lisp"))


;;;输入个示例代码测试下，注意双引号"还是英文的
（格式 T "世界，你好！~%"）
(格式 T "世界，你好！~%")
