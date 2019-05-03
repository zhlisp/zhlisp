(defmacro 界面 (名字)
"定义包界面名字，并进入定义的环境"
`(progn (defpackage ,名字
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,名字)))

(defmacro 对话框 (&optional &body body)"【对话框/capi:display-message】弹出一个对话框窗口"`(capi:display-message ,@body))

(defmacro 输入框 (&optional &body body)"【输入框/capi:prompt-for-string】弹出输入文本对话框窗口"`(capi:prompt-for-string ,@body))

(defmacro 输入数字 (&optional &body body)"【输入数字/capi:prompt-for-number】弹出输入数字对话框窗口"`(capi:prompt-for-number ,@body))

(defmacro  确认框 (&optional &body body)"【确认框/capi:prompt-for-confirmation】弹出确认是否对话框窗口"`(capi:prompt-for-confirmation ,@body))

(defmacro  单选框 (&optional &body body)"【单选框/capi:prompt-with-list】弹出单项选择对话框框窗口"`(capi:prompt-with-list ,@body))

(defmacro  多选框 (&optional &body body)"【多选框/capi:prompt-for-items-from-list】弹出多项选择对话框框窗口"`(capi:prompt-for-items-from-list ,@body))