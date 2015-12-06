'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports System
Imports Aspose.Cloud

Namespace Aspose.Imaging.Cloud.Examples.Manipulate
	Friend Class MergeTiffImages
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Dim output As String = "output.tiff"
			Dim append As String = "append.tiff"

			Dim outPath As String = ""

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)
			Common.StorageService.File.UploadFile(dataDir & append, append, storage:= Common.STORAGE)

			Common.GetImagingSdk().Tiff.AppendTiffImage(input, append, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
