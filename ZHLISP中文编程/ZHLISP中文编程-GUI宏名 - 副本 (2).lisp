(defmacro ���� (����)
"������������֣������붨��Ļ���"
`(progn (defpackage ,����
(:add-use-defaults t)
(:use "CAPI"))
(in-package ,����)))

(defmacro �Ի��� (&optional &body body)"���Ի���/capi:display-message������һ���Ի��򴰿�"`(capi:display-message ,@body))

(defmacro ����� (&optional &body body)"�������/capi:prompt-for-string�����������ı��Ի��򴰿�"`(capi:prompt-for-string ,@body))

(defmacro �������� (&optional &body body)"����������/capi:prompt-for-number�������������ֶԻ��򴰿�"`(capi:prompt-for-number ,@body))

(defmacro  ȷ�Ͽ� (&optional &body body)"��ȷ�Ͽ�/capi:prompt-for-confirmation������ȷ���Ƿ�Ի��򴰿�"`(capi:prompt-for-confirmation ,@body))

(defmacro  ��ѡ�� (&optional &body body)"����ѡ��/capi:prompt-with-list����������ѡ��Ի���򴰿�"`(capi:prompt-with-list ,@body))

(defmacro  ��ѡ�� (&optional &body body)"����ѡ��/capi:prompt-for-items-from-list����������ѡ��Ի���򴰿�"`(capi:prompt-for-items-from-list ,@body))