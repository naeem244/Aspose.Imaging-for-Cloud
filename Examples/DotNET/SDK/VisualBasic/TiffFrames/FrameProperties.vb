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
	Friend Class FrameProperties
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim frameId As Integer = 0
			Dim resp As TiffPropertiesResponse = Common.GetImagingSdk().Frame.GetPropertiesOfTiffFrame(input, frameId, Common.FOLDER, storage:= Common.STORAGE)

			Console.WriteLine(resp.BitsPerPixel)

		End Sub
	End Class
End Namespace
