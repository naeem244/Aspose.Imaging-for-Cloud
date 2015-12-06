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
	Friend Class UpdateGifPropertiesWithoutStorage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.gif"
			Dim output As String = "output.gif"

			Dim backgroundColorIndex As Byte = 255
			Dim colorResolution As Byte = 7
			Dim hasTrailer As Boolean = True
			Dim interlaced As Boolean = True
			Dim isPaletteSorted As Boolean = True
			Dim pixelAspectRatio As Byte = 10
			Dim outPath As String = dataDir & output

			Common.GetImagingSdk().Gif.UpdateParametersOfGifImage(backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, outPath, dataDir &input)
		End Sub
	End Class
End Namespace
