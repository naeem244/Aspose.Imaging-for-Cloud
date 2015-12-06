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
	Friend Class PerformSeveralOperationsOnImage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.jpg"
			Dim output As String = "output.jpg"

			Dim outPath As String ="Imaging/" & input

			Dim newWidth As Integer = 100
			Dim newHeight As Integer = 100
			Dim x As Integer = 5
			Dim y As Integer = 5
			Dim rectWidth As Integer = 10
			Dim rectHeight As Integer = 10

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Common.GetImagingSdk().UpdateImage.PerformScalingCroppingAndFlippingOfAnImage(input, ImageFormat.Jpg, newWidth, newHeight, x, y, rectWidth, rectHeight, outPath, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
