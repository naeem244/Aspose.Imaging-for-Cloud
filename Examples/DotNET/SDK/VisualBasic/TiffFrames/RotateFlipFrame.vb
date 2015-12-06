'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Imaging.Cloud.Examples.TiffFrames
	Friend Class RotateFlipFrame
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Dim output As String = "output.tiff"

			Dim outPath As String = "Imaging/" & input
			Dim frameId As Integer = 0
			Dim newWidth As Integer = 200
			Dim newHeight As Integer = 200
			Dim x As Integer = 20
			Dim y As Integer = 20
			Dim rectWidth As Integer = 100
			Dim rectHeight As Integer = 100

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Common.GetImagingSdk().Frame.UpdatePropertiesOfFrameInExistingTiffImage(input, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, True, outPath, Common.FOLDER, storage:= Common.STORAGE, rotateFlipMethod:= RotateFlipMethod.Rotate180FlipX)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
