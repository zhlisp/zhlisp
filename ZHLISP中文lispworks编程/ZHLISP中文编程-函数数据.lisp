;;;;常用函数名
(quote				引用			"【引用/quote】保持表达式或值不变，原样返回")
(list				列表			"【列表/list】将传入的参数构建成一个新列表")
(cons				点对			"【点对/cons】根据传入的参数构造一个新列表")
(car				前				"【前/car】取出列表最前面一个元素的基出函数")
(cdr				后				"【后/cdr】取出列表除最前面一个元素后面的元素")
(if					判断			"【判断/if】判断第一个参数的逻辑值	，为真求值第二个，为假求值第三个")
(defun				函数			"【函数/defun】定义新函数，三个参数，第一个函数名，第二个是一组用列表表示的实参，第三个是表达式")
(format				格式			"【格式/format】格式化字符串，第一个参数表示文本输出位置，第二个是字符模板，第三个是插入到字符串里的变量")
(read				读				"【读/read】读入用户输入的值")
(let				变量			"【变量/let】定义一个局部变量")
(let*				变量*			"【变量*/let*】定义一个局部变量，并可以定时时调用已定义的变量")
(defparameter		全局变量		"【全局变量/defparameter】定义一个全局变量")
(defconstant		常量			"【常量/defconstant】定义一个全局常量")
(setf				赋值			"【赋值/setf】给全局或局部变量赋值，可隐式地创建全局变量。还可以是表达式，第二个值会替换第一个表达式中的变量")
(do					判断循环		"【判断循环/do】先判断后循环")
(do*				判断循环*		"【判断循环*/do*】先判断后循环，可引用前面定义的变量")
(progn				依序求值		"【依序求值/progn】接受任意数量的表达式，依序求值并返回最后一个表达式的值")
(function			函数对象		"【函数对象/function】传入形参一个函数名，返回函数对像")
(lambda				表达式			"【表达式/lambda】lambde是一个符号，创建没有名字一次性函数")
(append				拼接			"【拼接/append】将任意数量的列表串接成一个新列表")
(and				与				"【与/and】如果所有的实参都为真，则返回最后一个实参的值。如果其中一个实参为假，所有实参都不会被求值，返回假")
(or					或				"【或/or】求值参数如果遇到一个为真的就停止求值，并返回这个值，只有所有参数都为假才返回假。")
(eq					同样			"【同样/eq】判断两个参数的指针是否相同，也就是不是同一个数据")
(eql				相同			"【相同/eql】比较两个参数的是否相等")
(equal				内同			"【内同/equal】判断显示的内容是否相同")
(not				非				"【非/not】对实参逻辑结果取反")
(cond				如果			"【如果/cond】后面跟多个判断条件，条件后是要执行的表达式")
(defmacro			宏				"【宏/defmacro】用来定义一个宏")
(loop				循环			"【循环/loop】功能很强大的通用循环函数，使用返回函数跳出循环")
(open				打开			"【打开/open】打开一个文件，读取或写入内容")
(print				打印			"【打印/print】打印出文本内容到屏幕")
(eval				求值			"【求值/eval】对引用的表达式进行求值")
(funcall			函数调用		"【函数调用/funcall】接受一个函数和实参列表，返回把传入函数应用在实参列表的结果，是任意数量的实参，最后一个不必是列表")
(break				断点			"【断点/break】插入断点，让程序暂停执行，以便查看参数，常用于程序调试")
;;;;扩展函数名
(numberp			是否数字		"【是否数字/numberp】对参数进行断判是不是数字")
(boundp				判断变量		"【判断变量/boundp】检查某些符号是否为全局变量或常量")
(remove				移除值			"【移除值/remove】返回第二个列表中所有不包含第一个参数的值的新列表")
(dolist				列表循环		"【列表循环/dolist】对第二个实参列表元素循环提取传入第一个实参变量中")
(typep				判断类型		"【判断类型/typep】接受一个对象和一个类型，判断对象是否为该类型")
(equalp				意同			"【意同/equalp】判断显示的内容相同，不区分大小写")
(copy-list			复制列表		"【复制列表/copy-list】返回一个列表的副本")
(nth				找到			"【找到/nth】在第二个参数列表中找到第一个参数位置的原子,零索引")
(nthcdr				找到后			"【找到后/nthcdr】在第二个参数列表中除第一个原子里找到第一个参数位置的原子,零索引")
(last				最后			"【最后/last】返回列表的最后一个对象")
(mapcar				映射函数		"【映射函数/mapcar】接受一个函数以及一个或多个列表,并返回把函数应用至每个列表的元素的结果,直到有的列表没有元素为止")
(maplist			渐进映射函数	"【渐进映射函数/maplist】接受一个函数以及一个或多个列表,将列表渐进的下一个[后]命令将结果传入函数")
(copy-tree			复制树			"【复制树/copy-tree】返回一个树的副本")
(subst				替换树原子		"【替换树原子/subst】在第三个列表中用第一个参数替换列表中所有的第二个参数")
(substitute			替换序列原子	"【替换序列原子/substitute】替换序列中的原子")
(ash				移位			"【移位/ash】相当于小数点的位置移动")
(assoc				关联列表		"【关联列表/assoc】用来取出在关联列表中，与给定的键值有关联的cons对")
(length				长度			"【长度/length】返回传入列表的长度也就是元素数量")
(unless				如果假			"【如果假/unless】如果条件为假则执行后面的表达式,否则跳过")
(when				如果真			"【如果真/when】如果条件为真则执行后面的表达式,否则跳过")
(reverse			倒序			"【倒序/reverse】返回与其参数相同元素的一个序列,但顺序颠倒")
(sort				排序			"【排序/sort】它接受一个序列及一个比较两个参数的函数，返回一个有同样元素的序列，根据比较函数来排序，注意它是破坏性的")
(push				添加			"【添加/push】将第一个参数放到第二个列表参数的前面")
(pop				移除前			"【移除前/pop】将列表的第一个原子移除")
(make-array			数组			"【数组/make-array】第一个实参为一个指定数组维度的列表")
(aref				取数组			"【取数组/aref】取出数组内的元素,是零索引的")
(vector				向量			"【向量/vector】构建的一维数组称为向量")
(svref				取向量			"【取向量/svref】取出向量的一个值")
(char				字符			"【字符/char】取出字符串中的一个字符")
(string-equal		文本意同		"【文本意同/string-equal】比较字符串,不区分大小写")
(concatenate		文本拼接		"【文本拼接/concatenate】将多个文本拼接成一个文本")
(defstruct			定义结构		"【定义结构/defstruct】定义一个结构体,第一个参数是结构类型,第二个参数是字段的名字")
(make-hash-table	哈希表			"【哈希表/make-hash-table】构造一个哈希表,不需要传入参数")
(gethash			取哈希表		"【取哈希表/gethash】传入一个键值和哈希表,如果没有返回nil")
(documentation		函数说明		"【函数说明/documentation】取出函数的说明文本(documentation '格式 'function)")
(labels				局部函数		"【局部函数/labels】定义一个局部函数")
(char-code			字符编码		"【字符编码/char-code】返回字符的数字编码")
(code-char			编码字符		"【编码字符/code-char】返回数字编码的字符")
(char<				字符<			"【字符</char<】判断第一个字符是否小于第二个字符")
(char<=				字符<=			"【字符<=/char<=】判断第一个字符是否小于等于第二个字符")
(char=				字符=			"【字符=/char=】判断两个字符是否相等")
(char>=				字符>=			"【字符>=/char>=】判断第一个字符是否大于等于第二个字符")
(char>				字符>			"【字符>/char>】判断第一个字符是否大于第二个字符")
(char/=				字符/=			"【字符/=/char/=】判断两个字符是否不相等")
(block				出口			"【出口/block】指定一个出口的名字，以便参数停止求值并返回出口值")
(return-from		返回出口		"【返回出口/return-from】返回指定出口并返回一个值")
(return				返回			"【返回/return】出口函数名字参数为nil时返回一个值并不再执行后面的代码")
(dotimes			计数循环		"【计数循环/dotimes】普通的计数循环函数，按数量递增循环")
(sleep				延时			"【延时/sleep】暂停一段时间后执行后面的命令，单位是秒")
(get-universal-time	当前时间		"【当前时间/get-universal-time】将当前时间以整数形式返回")
(ceiling			最小整数		"【最小整数/ceiling】返回列表中的最小整数")
(close				关				"【关/close】打开一个文件后，要使用这个函数关闭文件")
(decf				递减			"【递减/decf】(decf x n)类似於(setf x (- x n)的效果")
(defvar				空值全局变量	"【空值全局变量/defvar】定义一个全局变量但不指定值")
(disassemble		汇编			"【汇编/disassemble】返回函数的汇编代码")
(floor				最大整数		"【最大整数/floor】返回列表中的最大整数")
(fresh-line			换行			"【换行/fresh-line】输出一个换行命令")
(incf				递增			"【递增/incf】表达式(incf x n)类似於(setf x (+ x n))的效果")
(max				最大值			"【最大值/max】返回参数的值最大的一个")
(min				最小值			"【最小值/min】返回参数的值最小的一个")
(mod				余				"【余/mod】要决定某一个数是否可以被另一个数除，我们使用函数mod，它返回相除后的余数")
(pprint				美打			"【美打/pprint】将代码调整缩进后打印到屏幕上")
(read-byte			读字节			"【读字节/read-byte】读取字节命令")
(read-char			读字			"【读字/read-char】读取一个字母命令")
(read-line			读行			"【读行/read-line】读取一行文本")
(rem				余数			"【余数/rem】返回计算到的余数")
(rotatef			交换			"【交换/rotatef】交换两个参数的值")
(shiftf				值左移			"【值左移/shiftf】将所有参数的值依次左移一个参数，返回第一个的值")
(setq				变量赋值		"【变量赋值/setq】只能给变量赋值")
(subseq				文本提取		"【文本提取/subseq】提取部分文本,零索引,如果省略第三个参数,则将字符串的其余部分放到最后")
(evenp				偶数			"【偶数/evenp】判断参数是否是偶数")
(oddp				奇数			"【奇数/oddp】判断参数是否是奇数")
(union				并集			"【并集/union】")
(intersection		交集			"【交集/intersection】")
(complement			补集			"【补集/complement】")
(listp				判断列表		"【判断列表/listp】判断传入参数是否是一个列表")
(null				空表判断		"【空表判断/null】如果实参是一个空表则返回真")
(random				随机数			"【随机数/random】生成n以内的随机数")
(gensym				符号			"【符号/gensym】在宏里面生成一个随机变量符号")
(macroexpand		完全展开宏		"【完全展开宏/macroexpand】查看宏的展开代码，并展开子宏代码")
(macroexpand-1		展开宏			"【展开宏/macroexpand-1】查看宏的展开代码，只展开部分")
(load				加载			"【加载/load】加载一个程序文件并按照文件内容执行程序")
(apply				函数调用列表	"【函数调用列表/apply】接受一个函数和实参列表，返回把传入函数应用在实参列表的结果，可以是任意数量的实参，但最后一个要是列表")
(compile-file		编译			"【编译/compile-file】将源码编译进二进制文件，加载和执行更快")
(in-package			包内			"【包内/in-package】在包内包含的资源")
(getf				读符号值		"【读符号值/getf】读取和关键字符号关联的值")
(parse-integer		解析整数		"【解析整数/parse-integer】将内容转换为整数")
(y-or-n-p			是否			"【是否/y-or-n-p】提示输入是否并执行判断结果")
(with-open-file		打开文件		"【打开文件/with-open-file】打开文件执行完后自动关闭文件流")
(force-output		强制输出		"【强制输出/force-output】输出内容到数据流")
(remove-if-not		不匹配删除		"【不匹配删除/remove-if-not】将不符合条件的元素删除")
(remove-if			匹配删除		"【匹配删除/remove-if】将符合条件的元素删除")
;;;;GUI宏名
(capi:display-message				对话框			"【对话框/capi:display-message】弹出一个对话框窗口")
(capi:prompt-for-string				输入框			"【输入框/capi:prompt-for-string】弹出输入文本对话框窗口")
(capi:prompt-for-number				输入数字		"【输入数字/capi:prompt-for-number】弹出输入数字对话框窗口")
(capi:prompt-for-confirmation		确认框			"【确认框/capi:prompt-for-confirmation】弹出确认是否对话框窗口")
(capi:prompt-with-list				单选框			"【单选框/capi:prompt-with-list】弹出单项选择对话框框窗口")
(capi:prompt-for-items-from-list	多选框			"【多选框/capi:prompt-for-items-from-list】弹出多项选择对话框框窗口")