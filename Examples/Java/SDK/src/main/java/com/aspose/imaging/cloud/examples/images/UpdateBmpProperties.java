package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateBmpProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.bmp";
        String output = "Sample2.bmp";
        Path inputFile = Utils.getPath(UpdateBmpProperties.class, input);
        Path outputFile = Utils.getPath(UpdateBmpProperties.class, output);

        Integer bitsPerPixel = 24;
        Integer horizontalResolution = 300;
        Integer verticalResolution = 300;
        Boolean fromScratch = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getImagingSdk().GetImageBmp(
                input,
                bitsPerPixel,
                horizontalResolution,
                verticalResolution,
                fromScratch,
                outPath,
                Utils.FOLDER,
                Utils.STORAGE
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
