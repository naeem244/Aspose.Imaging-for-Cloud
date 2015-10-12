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
    class UpdateTiffPropertiesWithoutStorage
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.tiff";
            string output = "output.tiff";
            
            int horizontalResolution = 640;
            int verticalResolution = 480;
            string outPath = dataDir+output;

            Common.GetImagingSdk().Tiff.UpdateTiffImage(
                TiffFacCompressionType.CcittFax3,
                ResolutionUnit.Inch,
                horizontalResolution,
                verticalResolution,
                outPath,
                dataDir+input
                );
         
        }
    }
}
