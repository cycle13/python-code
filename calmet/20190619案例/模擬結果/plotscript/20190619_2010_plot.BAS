Sub Main
	'Declare the variable that will reference the application
	Dim SurferApp As Object
	Set SurferApp = CreateObject("Surfer.Application")
	SurferApp.Visible = False


'Open base SRF file
Set Plot = SurferApp.Documents.Open("D:\bokai\�B�ճ�_����\107112\calmet\20190619�n��ר�\�������G\�n��v2.srf")

Set Title = Plot.Shapes.Item(index:="Title")
Title.Text = "2019_M06_D19_2010(UTC+0800)"

Set Vector = Plot.Shapes.Item(index:="Vector")
Set obs = Vector.Overlays(2)
Set sim = Vector.Overlays(1)

obs.DataFile = "D:\bokai\�B�ճ�_����\107112\calmet\20190619�n��ר�\�������G\obs\2019_M06_D19_2010(UTC+0800)_OBS_1HR.vec"
sim.SetInputGrids("D:\bokai\�B�ճ�_����\107112\calmet\20190619�n��ר�\�������G\avg\20190619_2010_u_avg.txt","D:\bokai\�B�ճ�_����\107112\calmet\20190619�n��ר�\�������G\avg\20190619_2010_v_avg.txt")


Plot.Export("D:\bokai\�B�ճ�_����\107112\calmet\20190619�n��ר�\�������G\imgs\2019061920102.jpg",Options:="Width=654, Height=650")


End Sub
