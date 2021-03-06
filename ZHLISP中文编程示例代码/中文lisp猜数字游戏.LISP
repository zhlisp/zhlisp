;;;;使用LispWorks加载本文件，便可以使用中文的函数名、操作符、宏名，可自函数或添加名称。
;;;;只汉化了一小部分，英文和中文字称可同时使用，因为只是新建了一些中文宏。
;;;;所有的符号还必须使用英文符号，中文的不可以使用。
;;;;学习交流www.lisp.vip
;;;;作者：陆志广

;;;;如果你已经加载基本宏和扩展宏，可以从下面的代码直接执行。



(全局变量 *小* 1)
(全局变量 *大* 100)
(函数 猜数字 ()
              (移位 (+ *小* *大*) -1))
(函数 小()
              (赋值 *大* (1- (猜数字)))
              (猜数字))
(函数 大 ()
              (赋值 *小* (1+ (猜数字)))
              (猜数字))
(函数 开始()
              (全局变量 *小* 1)
              (全局变量 *大* 100)
              (猜数字))