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
	Friend Class UpdateBmpProperties
		Shared Sub Main()
			Dim dataDir As String = Aspose.Imaging.Cloud.Examples.Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.bmp"
			Dim output As String = "output.bmp"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim bitsPerPixel As Integer = 16
			Dim horizontalResolution As Integer = 1240
			Dim verticalResolution As Integer = 1240
			Dim outPath As String = "Imaging/" & input

			Common.GetImagingSdk().Bmp.UpdateParametersOfBmpImage(input, bitsPerPixel, horizontalResolution, verticalResolution, outPath, Common.FOLDER, storage:= Common.STORAGE)

            Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:=Common.STORAGE)

        End Sub
	End Class
End Namespace
