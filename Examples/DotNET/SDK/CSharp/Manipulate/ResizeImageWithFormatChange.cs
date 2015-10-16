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
    class ResizeImageWithFormatChange
    {
        static void Main() 
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.png";
            string output = "output.jpg";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string outPath = dataDir+output;
            int newHeight = 1200;
            int newWidth = 1200;
            Common.GetImagingSdk().Resize.ChangeScaleOfAnExistingImage(input, ImageFormat.Png, newWidth, newHeight, outPath, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
        }
    }
}
