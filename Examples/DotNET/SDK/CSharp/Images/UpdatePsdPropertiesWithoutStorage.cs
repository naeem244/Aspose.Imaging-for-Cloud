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
    class UpdatePsdPropertiesWithoutStorage
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.psd";
            string output = "output.psd";

            int channelsCount = 4;
            string outPath = dataDir+output;
            Common.GetImagingSdk().Psd.UpdateParametersOfPsdImage(channelsCount, outPath, dataDir+input);
        }
    }
}
