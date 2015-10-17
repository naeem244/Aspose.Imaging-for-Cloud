package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetImageProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Utils.getPath(GetImageProperties.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ImagingResponse apiResponse
                = Utils.getImagingSdk().GetImageProperties(
                        input,
                        Utils.FOLDER,
                        Utils.STORAGE
                );

        System.out.println(" Image Property : Height = " +apiResponse.getHeight());

    }
}
