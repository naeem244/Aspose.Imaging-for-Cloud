package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetImageProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Common.getPath(GetImageProperties.class, input);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ImagingResponse apiResponse
                = Common.getImagingSdk().GetImageProperties(
                        input,
                        Common.FOLDER,
                        Common.STORAGE
                );

        System.out.println(" Image Property : Height = " +apiResponse.getHeight());

    }
}
