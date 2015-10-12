//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using System;
using Aspose.Cloud;

namespace Aspose.Imaging.Cloud.Examples.Images
{
    class UpdateGifProperties
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.gif";
            string output = "output.gif";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE );

            byte backgroundColorIndex = 255;
            byte colorResolution = 7;
            bool hasTrailer = true;
            bool interlaced = true;
            bool isPaletteSorted = true;
            byte pixelAspectRatio = 10;
            string outPath = "Imaging/"+input;

            Common.GetImagingSdk().Gif.UpdateParametersOfGifImage(
                input,
                backgroundColorIndex,
                colorResolution,
                hasTrailer,
                interlaced,
                isPaletteSorted,
                pixelAspectRatio,
                outPath,
                Common.FOLDER,
                storage: Common.STORAGE
                );

            Common.StorageService.File.DownloadFile(outPath, dataDir+output, storage: Common.STORAGE);

        }
    }
}
