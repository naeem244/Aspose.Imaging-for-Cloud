'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Imaging.Cloud.Examples.Images
	Friend Class GetImageProperties
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim resp As ImagePropertiesResponse = Common.GetImagingSdk().Properties.GetPropertiesOfAnImage(input, Common.FOLDER, Common.STORAGE)

			Console.WriteLine(resp.Height)

		End Sub
	End Class
End Namespace
