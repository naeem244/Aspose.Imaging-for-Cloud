'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports System
Imports Aspose.Cloud

Namespace Aspose.Imaging.Cloud.Examples.Images
	Friend Class UpdateJpgProperties
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.jpg"
			Dim output As String = "output.jpg"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim outPath As String = "Imaging/" & input

			Common.GetImagingSdk().Jpg.UpdateParametersOfJpgImage(input, outPath, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace
