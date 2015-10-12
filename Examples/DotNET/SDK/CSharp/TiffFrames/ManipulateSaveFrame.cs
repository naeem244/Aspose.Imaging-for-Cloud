//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Imaging.Cloud.Examples.TiffFrames
{
    class ManipulateSaveFrame
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.tiff";
            string output = "output.tiff";
           
            string outPath = "Imaging/"+input;
            int frameId = 0;
            int newWidth = 200;
            int newHeight = 200;
            int x = 20;
            int y = 20;
            int rectWidth = 100;
            int rectHeight = 100;

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            Common.GetImagingSdk().Frame.UpdatePropertiesOfFrameInExistingTiffImage(input, frameId, newWidth, newHeight, 
                x, y, rectWidth, rectHeight, true, outPath, Common.FOLDER, 
                storage: Common.STORAGE, rotateFlipMethod: RotateFlipMethod.Rotate180FlipX);

            Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);

        }
    }
}
