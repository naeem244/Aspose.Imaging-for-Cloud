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
	Friend Class ExtractFrameFromMultiFrameTiffImage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Dim output As String = "output.tiff"

			Dim outPath As String = "Imaging/" & input
			Dim frameId As Integer = 0

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Common.GetImagingSdk().Frame.GetSeparateFrameOfTiffImage(input, frameId, outPath, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
