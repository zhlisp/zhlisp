Attribute VB_Name = "NewMacros"
Sub ��Excel�滻()


'Excel�ļ��е��滻��Ctrl+Alt+Z����HongTiHuan.xls��e�̸�Ŀ¼�£�


Dim Bth As String, Thw As String, Xh As Integer


Dim excel_App As Object


Dim excel_Book As Object


Dim excel_sheet As Object


'����Excel


Set excel_App = CreateObject("Excel.Application") '���ó������ʵ��


'����ExcelΪ���ɼ�


excel_App.Visible = False


'���ļ�


Set excel_Book = excel_App.Workbooks.Open(ActiveDocument.Path & "\HongTiHuan.xlsx") '������ʵ��


Set excel_sheet = excel_Book.Worksheets("�滻") '���ݱ�ʵ��


Xh = 1


Bth = excel_sheet.Range("A" & Xh).Value


Thw = excel_sheet.Range("B" & Xh).Value


While Bth <> ""


Selection.Find.Replacement.ClearFormatting


With Selection.Find


.Text = Bth '����ʹ��ͨ�����


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


'�ر�Excel�ļ�


Set excel_sheet = Nothing


excel_App.ActiveWorkbook.Close savechanges:=True '�����EXCELL���и��ġ�


Set excel_Book = Nothing


excel_App.Quit


Set excel_App = Nothing


End Sub
