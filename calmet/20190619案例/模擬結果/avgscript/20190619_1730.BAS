
Sub Main
	'Declare the variable that will reference the application
	Dim SurferApp As Object
	Set SurferApp = CreateObject("Surfer.Application")
	SurferApp.Visible = False
	strCurDirectory = CurDir


Set inpath="D:\bokai\�B�ճ�_����\calmet\20190619�n��ר�\�������G\uv\"
Set infile="20190619_1730uv.txt"

Set outpath="D:\bokai\�B�ճ�_����\calmet\20190619�n��ר�\�������G\avg\"
Set Ufile ="20190619_1730_u_avg.txt"
Set Vfile ="20190619_1730_v_avg.txt"

'----U GRID
SurferApp.GridData(DataFile:=inpath+infile,xCol:=1, yCol:=2, zCol:=3, NumRows:=40, NumCols:=40, Algorithm:=srfKriging, OutGrid:=outpath+Ufile, OutFmt:=srfGridFmtS7)
'----V GRID
SurferApp.GridData(DataFile:=inpath+infile,xCol:=1, yCol:=2, zCol:=4, NumRows:=40, NumCols:=40, Algorithm:=srfKriging, OutGrid:=outpath+Vfile, OutFmt:=srfGridFmtS7)

End Sub
