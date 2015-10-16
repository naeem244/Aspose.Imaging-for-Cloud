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
    class CropImageWithFormatChange
    {
        static void Main() 
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.png";
            string output = "output.png";

            string outPath = "Imaging/"+input;
            int x = 10, y = 10;
            int newHeight = 100;
            int newWidth = 100;

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            Common.GetImagingSdk().Crop.CropExistingImage(input, ImageFormat.Png, x, y, newWidth, 
                newHeight, outPath, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
            
        }
    }
}
