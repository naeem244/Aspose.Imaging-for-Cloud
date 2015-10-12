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
    class ExtractFrameFromMultiFrameTiffImage
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.tiff";
            string output = "output.tiff";
           
            string outPath = "Imaging/"+input;
            int frameId = 0;

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            Common.GetImagingSdk().Frame.GetSeparateFrameOfTiffImage(input, frameId, outPath, 
                Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);

        }
    }
}
