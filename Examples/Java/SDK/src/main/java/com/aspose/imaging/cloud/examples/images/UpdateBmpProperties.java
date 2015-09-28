package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateBmpProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.bmp";
        String output = "Sample2.bmp";
        Path inputFile = Common.getPath(UpdateBmpProperties.class, input);
        Path outputFile = Common.getPath(UpdateBmpProperties.class, output);

        Integer bitsPerPixel = 24;
        Integer horizontalResolution = 300;
        Integer verticalResolution = 300;
        Boolean fromScratch = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getImagingSdk().GetImageBmp(
                input,
                bitsPerPixel,
                horizontalResolution,
                verticalResolution,
                fromScratch,
                outPath,
                Common.FOLDER,
                Common.STORAGE
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
