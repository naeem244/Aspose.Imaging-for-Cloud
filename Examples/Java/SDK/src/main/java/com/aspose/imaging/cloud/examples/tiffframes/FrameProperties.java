package com.aspose.imaging.cloud.examples.tiffframes;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class FrameProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Common.getPath(FrameProperties.class, input);
        
        Integer frameId = 0;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ImagingResponse apiResponse = Common.getImagingSdk().GetImageFrameProperties(
                input, 
                frameId, 
                Common.FOLDER, 
                Common.STORAGE
        );

        System.out.println(" Frame property Class "+apiResponse.getTiffProperties().getClass());

    }
}
