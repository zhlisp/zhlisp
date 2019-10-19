;;;;显示gpio当前数据

gpio readall

;;定义控制函数
(defmacro 导出引脚 (pin)
  (let ((in (gensym)))
    `(with-open-file (,in "/sys/class/gpio/export" :direction :output :if-exists :overwrite)
      (format ,in "~A" ,pin))))


(defmacro 引脚模式 (pin mode)
  (let ((in (gensym)))
    `(with-open-file (,in (format nil "~a~a~a" "/sys/class/gpio/gpio" ,pin "/direction") :direction :output :if-exists :overwrite)
      (format ,in "~A" 
        (cond
          ((eql 'OUT ',mode) "out")
          ((eql 'IN ',mode) "in")
          (t (format t "您输入的参数不对，请重新输入out或in")))))))


(defmacro 写引脚 (pin value)
  (let ((in (gensym)))
    `(with-open-file (,in (format nil "~a~a~a" "/sys/class/gpio/gpio" ,pin "/value") :direction :output :if-exists :overwrite)
      (format ,in "~A" ,value))))


(defmacro 关引脚 (pin)
  (let ((in (gensym)))
    `(with-open-file (,in "/sys/class/gpio/unexport" :direction :output :if-exists :overwrite)
      (format ,in "~A" ,pin))))


(defmacro 读引脚 (pin)
  (let ((in (gensym)))
    `(with-open-file (,in (format nil "~a~a~a" "/sys/class/gpio/gpio" ,pin "/value") :if-does-not-exist nil)
      (read ,in))))
	  

控制gpio示例

导出引脚
(导出引脚 11)


设置为输出模式
(引脚模式 11 out)

设置为输入模式
(引脚模式 11 in)

设置为高电平
(写引脚 11 1)

设置为低电平
(写引脚 11 0)

关闭引脚
(关引脚 11)

读取引脚值

(读引脚 11)



(defun 初始化 ()
	(导出引脚 13)
	(引脚模式 13 "out")
	(导出引脚 19)
	(引脚模式 19 "out")
	(导出引脚 20)
	(引脚模式 20 "out"))



(defun 闪灯 (int)
	(dotimes (x int)
	(写引脚 13 1)
	(sleep 0.5)
	(写引脚 13 0)
	(sleep 0.5)
	(写引脚 19 1)
	(sleep 0.5)
	(写引脚 19 0)
	(sleep 0.5)
	(写引脚 20 1)
	(sleep 0.5)
	(写引脚 20 0)
	(sleep 0.5)))


(defun 关引脚 ()
	(关引脚 13)
	(关引脚 19)
	(关引脚 20))
