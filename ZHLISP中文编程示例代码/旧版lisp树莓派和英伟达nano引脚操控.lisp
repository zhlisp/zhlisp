;;;;显示gpio当前数据

gpio readall




;;;;初始化宏

(defun sh (cmd)
    #+clisp
        (let ((str (ext:run-shell-command cmd :output:stream)))
            (loop for line = (read-line str nil)
             until (null line)
             do (print line)))
    #+ecl 
        (si:system cmd)
    #+sbcl 
        (sb-ext:run-program "/bin/sh" (list "-c" cmd) :input nil :output *standard-output*)
    #+clozure 
        (ccl:run-program "/bin/sh" (list "-c" cmd) :input nil :output *standard-output*))



(defmacro 导出引脚 (pin)
	`(sh ,(format nil "echo ~a > ~a" pin "/sys/class/gpio/export")))



(defmacro 引脚模式 (pin mode)
	`(sh ,(format nil "echo ~a > ~a~a~a" mode "/sys/class/gpio/gpio" pin "/direction")))



(defmacro 输出值 (pin value)
	`(sh ,(format nil "echo ~a > ~a~a~a" value "/sys/class/gpio/gpio" pin "/value")))



(defmacro 关闭引脚 (pin)
	`(sh ,(format nil "echo ~a > /sys/class/gpio/unexport" pin)))



(defmacro 读取值 (pin)
	`(sh ,(format nil "cat ~a~a~a" "/sys/class/gpio/gpio" pin "/value")))






;控制gpio示例

;导出引脚
(导出引脚 11)


;设置为输出模式
(引脚模式 11 "out")

;设置为输入模式
(引脚模式 11 "in")

;设置为高电平
(输出值 11 1)

;设置为低电平
(输出值 11 0)

;关闭引脚
(关闭引脚 11)

;读取数值
(读取值 11)



(defun 初始化 ()
	(导出引脚 13)
	(引脚模式 13 "out")
	(导出引脚 19)
	(引脚模式 19 "out")
	(导出引脚 20)
	(引脚模式 20 "out"))



(defun 闪灯 (int)
	(dotimes (x int)
	(输出值 13 1)
	(sleep 0.5)
	(输出值 13 0)
	(sleep 0.5)
	(输出值 19 1)
	(sleep 0.5)
	(输出值 19 0)
	(sleep 0.5)
	(输出值 20 1)
	(sleep 0.5)
	(输出值 20 0)
	(sleep 0.5)))


(defun 关闭引脚 ()
	(关闭引脚 13)
	(关闭引脚 19)
	(关闭引脚 20))

