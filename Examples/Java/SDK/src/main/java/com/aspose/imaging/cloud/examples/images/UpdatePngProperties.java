package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePngProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.png";
        Path inputFile = Common.getPath(UpdatePngProperties.class, input);
        Path outputFile = Common.getPath(UpdatePngProperties.class, output);

        Boolean fromScratch = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getImagingSdk().GetImagePng(
                input, 
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
