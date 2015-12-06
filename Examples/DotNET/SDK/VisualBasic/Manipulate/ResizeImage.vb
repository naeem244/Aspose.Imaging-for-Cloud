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
	Friend Class ResizeImage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.png"
			Dim output As String = "output.png"

			Dim outPath As String = dataDir & output
			Dim newHeight As Integer = 1200
			Dim newWidth As Integer = 1200

			Common.GetImagingSdk().Resize.ChangeScaleOfAnImage(ImageFormat.Png, newWidth, newHeight, outPath, dataDir & input)

		End Sub
	End Class
End Namespace
