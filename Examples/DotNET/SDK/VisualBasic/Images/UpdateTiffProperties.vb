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
	Friend Class UpdateTiffProperties
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Dim output As String = "output.tiff"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim horizontalResolution As Integer = 300
			Dim verticalResolution As Integer = 300
			Dim outPath As String = "Imaging/" & input

			Common.GetImagingSdk().Tiff.UpdateTiffImage(TiffFacCompressionType.CcittFax3, ResolutionUnit.Inch, horizontalResolution, verticalResolution, outPath, dataDir &input)

			Common.StorageService.File.DownloadFile(outPath, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace
