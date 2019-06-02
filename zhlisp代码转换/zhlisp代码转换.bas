Attribute VB_Name = "NewMacros"
Sub 用Excel替换()


'Excel文件中的替换（Ctrl+Alt+Z）（HongTiHuan.xls在e盘根目录下）


Dim Bth As String, Thw As String, Xh As Integer


Dim excel_App As Object


Dim excel_Book As Object


Dim excel_sheet As Object


'启动Excel


Set excel_App = CreateObject("Excel.Application") '引用程序对象实例


'设置Excel为不可见


excel_App.Visible = False


'打开文件


Set excel_Book = excel_App.Workbooks.Open(ActiveDocument.Path & "\HongTiHuan.xlsx") '工作簿实例


Set excel_sheet = excel_Book.Worksheets("替换") '数据表实例


Xh = 1


Bth = excel_sheet.Range("A" & Xh).Value


Thw = excel_sheet.Range("B" & Xh).Value


While Bth <> ""


Selection.Find.Replacement.ClearFormatting


With Selection.Find


.Text = Bth '可以使用通配符了


.Replacement.Text = Thw


.Forward = True


.Wrap = wdFindContinue


.Format = True


.MatchCase = False


.MatchWholeWord = False


.MatchByte = False


.MatchAllWordForms = False


.MatchSoundsLike = False


.MatchWildcards = True


End With


Selection.Find.Execute Replace:=wdReplaceAll


Selection.Find.ClearFormatting


Xh = Xh + 1


Bth = excel_sheet.Range("A" & Xh).Value


Thw = excel_sheet.Range("B" & Xh).Value


Wend


'关闭Excel文件


Set excel_sheet = Nothing


excel_App.ActiveWorkbook.Close savechanges:=True '保存对EXCELL进行更改。


Set excel_Book = Nothing


excel_App.Quit


Set excel_App = Nothing


End Sub
