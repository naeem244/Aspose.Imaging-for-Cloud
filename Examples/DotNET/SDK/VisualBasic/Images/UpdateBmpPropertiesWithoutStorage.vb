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
	Friend Class UpdateBmpPropertiesWithoutStorage
		Shared Sub Main()
			Dim dataDir As String = Aspose.Imaging.Cloud.Examples.Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.bmp"
			Dim output As String = "output.bmp"

			Dim bitsPerPixel As Integer = 24
			Dim horizontalResolution As Integer = 300
			Dim verticalResolution As Integer = 300

			Common.GetImagingSdk().Bmp.UpdateParametersOfBmpImage(bitsPerPixel, horizontalResolution, verticalResolution, dataDir & output, dataDir &input)
		End Sub
	End Class
End Namespace
