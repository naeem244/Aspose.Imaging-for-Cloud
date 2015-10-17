package com.aspose.imaging.cloud.examples.tiffframes;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class FrameProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Utils.getPath(FrameProperties.class, input);
        
        Integer frameId = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ImagingResponse apiResponse = Utils.getImagingSdk().GetImageFrameProperties(
                input, 
                frameId, 
                Utils.FOLDER,
                Utils.STORAGE
        );

        System.out.println(" Frame property Class "+apiResponse.getTiffProperties().getClass());

    }
}
