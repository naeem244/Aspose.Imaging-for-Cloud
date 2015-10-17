package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePngProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.png";
        Path inputFile = Utils.getPath(UpdatePngProperties.class, input);
        Path outputFile = Utils.getPath(UpdatePngProperties.class, output);

        Boolean fromScratch = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getImagingSdk().GetImagePng(
                input, 
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
