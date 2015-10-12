//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using System;
using Aspose.Cloud;

namespace Aspose.Imaging.Cloud.Examples.Manipulate
{
    class MergeTiffImages
    {
        static void Main() 
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.tiff";
            string output = "output.tiff";
            string append = "append.tiff";

            string outPath = "";
            
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            Common.StorageService.File.UploadFile(dataDir + append, append, storage: Common.STORAGE);

            Common.GetImagingSdk().Tiff.AppendTiffImage(input, append, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
            
        }
    }
}
