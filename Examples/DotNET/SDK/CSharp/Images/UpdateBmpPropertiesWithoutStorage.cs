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
    class UpdateBmpPropertiesWithoutStorage
    {
        static void Main()
        {
            string dataDir = Aspose.Imaging.Cloud.Examples.Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.bmp";
            string output = "output.bmp";
            
            int bitsPerPixel = 24;
            int horizontalResolution = 300;
            int verticalResolution = 300;
            
            Common.GetImagingSdk().Bmp.UpdateParametersOfBmpImage(
                bitsPerPixel,
                horizontalResolution,
                verticalResolution,
                dataDir + output,
                dataDir+input
                );
        }
    }
}
