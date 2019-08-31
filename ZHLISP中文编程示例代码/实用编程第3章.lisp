；(load "git/zhlisp/ZHLISP中文编程通用加载宏/ZHLISP中文编程-常用函数名.lisp")
；(load "git/zhlisp/ZHLISP中文编程通用加载宏/ZHLISP中文编程-扩展函数名.lisp")

(load "D:\\GitHub\\zhlisp\\ZHLISP中文编程通用加载宏\\ZHLISP中文编程-常用函数名.lisp")
(load "D:\\GitHub\\zhlisp\\ZHLISP中文编程通用加载宏\\ZHLISP中文编程-扩展函数名.lisp")

;;3.1 CD和记录
(列表 1 2 3)
(列表 :a 1 :b 2 :c 3)
(读符号值 (列表 :a 1 :b 2 :c 3) :a)
(读符号值 (列表 :a 1 :b 2 :c 3) :c)

(函数 录入音乐 (标题 艺术家 评分 转格式)
      (列表 :标题 标题 :艺术家 艺术家 :评分 评分 :转格式 转格式))

(录入音乐 "卡路里" "火箭少女101" 7 t)

;;3.2 录入CD
(空值全局变量 *db* nil)

(函数 添加记录 (cd) (添加 cd *db*))

(添加记录 (录入音乐 "卡路里" "火箭少女101" 7 t))
(添加记录 (录入音乐 "三生三世" "张杰" 8 t))
(添加记录 (录入音乐 "明天过后" "张杰" 9 t))

;;3.3 查看数据库的内容
*db*

;标题:       明天过后
;艺术家:      张杰
;评分:       9
;转格式:      T

;标题:       三生三世
;艺术家:      张杰
;评分:       8
;转格式:      T

;标题:       卡路里
;艺术家:      火箭少女101
;评分:       7
;转格式:      T

(函数 转储数据库 ()
      (列表循环 (cd *db*)
		(格式 t "~{~a:~10t~a~%~}~%" cd)))

(格式 t "~a" "张杰")

(格式 t "~a" :艺术家)

(格式 t "~a:~10t~a" :艺术家 "张杰")

(函数 转储数据库 ()
      (格式 t "~{~{~a:~10t~a~%~}~%~}" *db*))

(转储数据库)

;;3.4 改进用户交互
(函数 提示输入 (提示)
      (格式 *query-io* "~a: " 提示)
      (强制输出 *query-io*)
      (读行 *query-io*))

(函数 提示输入音乐 ()
      (录入音乐
       (提示输入 "标题")
       (提示输入 "艺术家")
       (提示输入 "评分")
       (提示输入 "转格式 [y/n]")))

(解析整数 (提示输入 "评分"))

(解析整数 (提示输入 "评分") :junk-allowed t)

(或 (解析整数 (提示输入 "评分") :junk-allowed t) 0)

(是否 "转格式 [y/n]: ")

(函数 提示输入音乐 ()
      (录入音乐
       (提示输入 "标题")
       (提示输入 "艺术家")
       (或 (解析整数 (提示输入 "评分") :junk-allowed t) 0)
       (是否 "转格式 [y/n]: ")))

(函数 添加音乐组 ()
      (循环 (添加记录 (提示输入音乐))
	    (判断 (非 (是否 "需要添加下一条信息吗? [y/n]: ")) (返回))))

(添加音乐组)
;标题: 最美的期待
;艺术家: 周笔畅
;评分: 6

;转格式 [y/n]:  (y or n) y

;需要添加下一条信息吗? [y/n]:  (y or n) y
;标题: 微微一笑很倾城
;艺术家: 杨洋
;评分: 10

;转格式 [y/n]:  (y or n) y

;需要添加下一条信息吗? [y/n]:  (y or n) y
;标题: 我们不一样
;艺术家: 大壮
;评分: 9

;转格式 [y/n]:  (y or n) y

;需要添加下一条信息吗? [y/n]:  (y or n) n

;NIL

;;3.5 保存和加载数据库
(函数 保存数据库 (文件名字)
		(打开文件 (out 文件名字
			       :direction :output
			       :if-exists :supersede)
			  (with-standard-io-syntax
			    (打印 *db* out))))

(保存数据库 "D:\\GitHub\\my-cds.db")

(函数 加载数据库 (文件名字)
      (打开文件 (in 文件名字)
		(with-standard-io-syntax
		  (赋值 *db* (读 in)))))

(加载数据库 "D:\\GitHub\\my-cds.db")

(搜索 :艺术家 "张杰")

(不匹配删除 #'evenp '(1 2 3 4 5 6 7 8 9 10))

(不匹配删除 #'(lambda (x) (= 0 (余 x 2))) '(1 2 3 4 5 6 7 8 9 10))

(表达式 (x) (= 0 (余 x 2)))

(不匹配删除 #'(lambda (x) (= 1 (余 x 2))) '(1 2 3 4 5 6 7 8 9 10))

(不匹配删除 #'(lambda (cd) (内同 (读符号值 cd :艺术家) "张杰")) *db*)

(函数 搜索艺术家 (艺术家)
      (不匹配删除
	#'(lambda (cd) (内同 (读符号值 cd :艺术家) 艺术家))
	*db*))

(函数 搜索 (搜索内容)
      (不匹配删除 搜索内容 *db*))

(搜索 #'(lambda (cd) (内同 (读符号值 cd :艺术家) "张杰")))

(函数 搜索艺术家名 (艺术家名)
      #'(lambda (cd) (内同 (读符号值 cd :艺术家) 艺术家名)))

(搜索 (搜索艺术家名 "张杰"))

(函数 临时 (a b c) (列表 a b c))

(临时 1 2 4)

(函数 临时 (&key a b c) (列表 a b c))

(临时 :a 1 :b 2 :c 3)  ;==> (1 2 3)

(临时 :c 3 :b 2 :a 1)  ;==> (1 2 3)

(临时 :a 1 :c 3)       ;==> (1 NIL 3)

(临时)                 ;==> (NIL NIL NIL)

(函数 临时
      (&key a (b 20) (c 30 c-p))
      (列表 a b c c-p))


(临时 :a 1 :b 2 :c 3)  ;==> (1 2 3 T)

(临时 :c 3 :b 2 :a 1)  ;==> (1 2 3 T)

(临时 :a 1 :c 3)       ;==> (1 20 3 T)

(临时)                 ;==> (NIL 20 30 NIL)

(搜索 (哪里有 :艺术家 "张杰"))

(搜索 (哪里有 :评分 10 :转格式 T))

(函数 哪里有 (&key 标题 艺术家 评分 (转格式 nil 转格式-p))
      #'(lambda (cd)
	  (与
	    (判断 标题    (内同 (读符号值 cd :标题)  标题)  t)
	    (判断 艺术家   (内同 (读符号值 cd :艺术家) 艺术家) t)
	    (判断 评分   (内同 (读符号值 cd :评分) 评分) t)
	    (判断 转格式-p (内同 (读符号值 cd :转格式) 转格式) t))))

;;3.7 更新已有的记录——哪里有再战江湖
(函数 更新 (搜索内容 &key 标题 艺术家 评分 (转格式 nil 转格式-p))
      (赋值 *db*
	    (映射函数
	      #'(lambda (行)
		  (如果真 (函数调用 搜索内容 行)
			  (判断 标题    (赋值 (读符号值 行 :标题) 标题))
			  (判断 艺术家   (赋值 (读符号值 行 :艺术家) 艺术家))
			  (判断 评分   (赋值 (读符号值 行 :评分) 评分))
			  (判断 转格式-p (赋值 (读符号值 行 :转格式) 转格式)))
		  行) *db*)))

(更新 (哪里有 :艺术家 "张杰") :评分 11)

(搜索 (哪里有 :艺术家 "张杰"))

(函数 删除行 (搜索内容)
      (赋值 *db* (匹配删除 搜索内容 *db*)))

(删除行 (哪里有 :标题 "最美的期待"))

;;3.8 消除重复，获益良多
(判断 标题 (内同 (读符号值 cd :标题) 标题) t)

(搜索 (哪里有 :标题 "三生三世" :转格式 t))

(搜索 #'(lambda (cd)
	  (与 (内同 (读符号值 cd :标题) "三生三世")
	      (内同 (读符号值 cd :转格式) t))))

(宏 向后 (反向列表) (倒序 反向列表))

(向后 ("你好，世界" t 格式))

;(内同 (读符号值 cd 区域) 值)

;(函数 比较反向列表 (区域 值)    ; 错误

;      (列表 内同 (列表 读符号值 cd 区域) 值))

(函数 比较反向列表 (区域 值)
      (列表 '内同 (列表 '读符号值 'cd 区域) 值))

(比较反向列表 :评分 10)

;(内同
;  (读符号值
;    CD
;    :评分)
;  10)

(比较反向列表 :标题 "三生三世")

;(内同
;  (读符号值
;    CD
;    :标题)
;  "三生三世")

`(1 2 3)

;(1 2 3)

'(1 2 3)

;(1 2 3)

`(1 2 (+ 1 2))        ;==> (1 2 (+ 1 2))

`(1 2 ,(+ 1 2))       ;==> (1 2 3)

(函数 比较反向列表 (区域 值)
      `(内同 (读符号值 cd ,区域) ,值))

(函数 用列表比较 (区域)
      (循环 while 区域
	    collecting (比较反向列表 (移除前 区域) (移除前 区域))))

(宏 哪里有 (&rest 子列表)
    `#'(lambda (cd) (与 ,@(用列表比较 子列表))))

`(与 ,(列表 1 2 3))   ;==> (与 (1 2 3))

`(与 ,@(列表 1 2 3))  ;==> (与 1 2 3)

`(与 ,@(列表 1 2 3) 4) ;==> (与 1 2 3 4)

(哪里有 :标题 "三生三世" :转格式 t)

;(:标题 "三生三世" :转格式 t)

(展开宏 '(哪里有 :标题 "三生三世" :转格式 t))

;#'(LAMBDA (CD)
;    (与
;      (内同
;        (读符号值
;          CD
;          :标题)
;        "三生三世")
;      (内同
;        (读符号值
;          CD
;          :转格式)
;        T)))

(搜索 (哪里有 :标题 "三生三世" :转格式 t))


