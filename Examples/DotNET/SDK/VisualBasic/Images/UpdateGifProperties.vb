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
	Friend Class UpdateGifProperties
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.gif"
			Dim output As String = "output.gif"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim backgroundColorIndex As Byte = 255
			Dim colorResolution As Byte = 7
			Dim hasTrailer As Boolean = True
			Dim interlaced As Boolean = True
			Dim isPaletteSorted As Boolean = True
			Dim pixelAspectRatio As Byte = 10
			Dim outPath As String = "Imaging/" & input

			Common.GetImagingSdk().Gif.UpdateParametersOfGifImage(input, backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, outPath, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
