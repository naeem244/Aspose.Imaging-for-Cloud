' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports System
Imports System.IO
Imports Aspose.Cloud

Namespace Aspose.Imaging.Cloud.Examples
	Friend Class Common
		Public Shared APP_SID As String = Nothing
		Public Shared APP_KEY As String = Nothing
		Public Shared FOLDER As String = ""
		Public Shared STORAGE As String = ""


		Public Shared Function GetDataDir(ByVal t As Type) As String
			Dim c As String = t.FullName
			c = c.Replace("Aspose.Imaging.Cloud.Examples.", "")
			c = c.Replace("."c, Path.DirectorySeparatorChar)
			Dim p As String = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c))
			p &= Path.DirectorySeparatorChar
			Console.WriteLine("Using Data Dir {0}", p)
			Return p
		End Function

		Public Shared Function GetImagingSdk() As ImagingService
			Dim c As New ImagingService(APP_SID, APP_KEY)
			Return c
		End Function

		Public Shared ReadOnly Property StorageService() As StorageService
			Get
				Dim s As New StorageService(APP_SID, APP_KEY)
				Return s
			End Get

		End Property

		Private Shared Sub Pause()
			Console.WriteLine("Press any key to continue...")
			Console.ReadKey()
		End Sub

		Shared Sub Main(ByVal args() As String)
			Console.WriteLine("To run an example, Go to 'Project Properties' and set the 'Startup Object'")
			Console.WriteLine("Press any key to continue...")
			Console.ReadKey()
		End Sub
	End Class
End Namespace
