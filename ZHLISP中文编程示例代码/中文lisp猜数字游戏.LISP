;;;;使用LispWorks加载本文件，便可以使用中文的函数名、操作符、宏名，可自定义或添加名称。
;;;;只汉化了一小部分，英文和中文字称可同时使用，因为只是新建了一些中文宏。
;;;;所有的符号还必须使用英文符号，中文的不可以使用。
;;;;学习交流www.lisp.vip
;;;;作者：陆志广

(defmacro 全局变量 (&optional &rest rest)
	“defparameter:全局变量”
	`(defparameter ,@rest))

(defmacro 定义 (&optional &rest rest)
	“defun:定义”
	`(defun ,@rest))
	
(defmacro 移位 (&optional &rest rest)
	"ash:移位"
	`(ash ,@rest))
	
(defmacro 赋值 (&optional &rest rest)
	“setf:赋值”
	`(setf ,@rest))


;;;;如果你已经加载基本宏和扩展宏，那么便不用再执行上面的代码，可以从下面的代码直接执行。



(全局变量 *小* 1)
(全局变量 *大* 100)
(定义 猜数字 ()
              (移位 (+ *小* *大*) -1))
(定义 小()
              (赋值 *大* (1- (猜数字)))
              (猜数字))
(定义 大 ()
              (赋值 *小* (1+ (猜数字)))
              (猜数字))
(定义 开始()
              (全局变量 *小* 1)
              (全局变量 *大* 100)
              (猜数字))