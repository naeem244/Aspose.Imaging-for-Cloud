// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using System;
using System.IO;
using Aspose.Cloud;

namespace Aspose.Imaging.Cloud.Examples
{
    class Common
    {
        public static string APP_SID = null;
        public static string APP_KEY = null;
        public static string FOLDER = "";
        public static string STORAGE = "";
 

        public static string GetDataDir(Type t)
        {
            string c = t.FullName;
            c = c.Replace("Aspose.Imaging.Cloud.Examples.", "");
            c = c.Replace('.', Path.DirectorySeparatorChar);
            string p = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c));
            p += Path.DirectorySeparatorChar;
            Console.WriteLine("Using Data Dir {0}", p);
            return p;
        }

        public static ImagingService GetImagingSdk()
        {
            ImagingService c = new ImagingService(APP_SID, APP_KEY);
            return c;
        }

        public static StorageService StorageService
        {
            get
            {
                StorageService s = new StorageService(APP_SID, APP_KEY);
                return s;
            }

        }

        static void Pause()
        {
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }

        static void Main(string[] args)
        {
            Console.WriteLine("To run an example, Go to 'Project Properties' and set the 'Startup Object'");
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }
    }
}
