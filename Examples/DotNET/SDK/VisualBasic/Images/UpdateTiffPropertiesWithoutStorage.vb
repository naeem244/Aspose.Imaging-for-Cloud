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
	Friend Class UpdateTiffPropertiesWithoutStorage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.tiff"
			Dim output As String = "output.tiff"

			Dim horizontalResolution As Integer = 640
			Dim verticalResolution As Integer = 480
			Dim outPath As String = dataDir & output

			Common.GetImagingSdk().Tiff.UpdateTiffImage(TiffFacCompressionType.CcittFax3, ResolutionUnit.Inch, horizontalResolution, verticalResolution, outPath, dataDir &input)

		End Sub
	End Class
End Namespace
