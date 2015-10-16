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
    class RotateFlipImageOnStorage
    {
        static void Main() 
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.png";
            string output = "output.png";

            string outPath = dataDir + output;
            
            //local storage method works but for input and output on cloud storage does not
            Common.GetImagingSdk().RotateFlip.RotateFlipImage(ImageFormat.Png, RotateFlipMethod.Rotate180FlipX, outPath, dataDir + input);
            
            /*
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            Common.GetImagingSdk().RotateFlip.RotateFlipExistingImage(input, ImageFormat.Png, RotateFlipMethod.Rotate180FlipX, outPath, Common.FOLDER, storage: Common.STORAGE);
            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
            */
        }
    }
}
