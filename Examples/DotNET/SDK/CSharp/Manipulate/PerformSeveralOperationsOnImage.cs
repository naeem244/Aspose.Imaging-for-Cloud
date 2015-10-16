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
    class PerformSeveralOperationsOnImage
    {
        static void Main() 
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.jpg";
            string output = "output.jpg";

            string outPath ="Imaging/"+input;

            int newWidth = 100;
            int newHeight = 100;
            int x = 5;
            int y = 5;
            int rectWidth = 10;
            int rectHeight = 10;
            
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            Common.GetImagingSdk().UpdateImage.PerformScalingCroppingAndFlippingOfAnImage(input, 
                ImageFormat.Jpg, newWidth, newHeight, x, y, rectWidth, rectHeight, outPath, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
            
        }
    }
}
