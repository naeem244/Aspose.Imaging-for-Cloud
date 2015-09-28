package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePngPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.png";
        Path inputFile = Common.getPath(UpdatePngPropertiesWithoutStorage.class, input);
        Path outputFile = Common.getPath(UpdatePngPropertiesWithoutStorage.class, output);

        Boolean fromScratch = true;
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage sr = Common.getImagingSdk().PostImagePng(
                fromScratch, 
                outPath, 
                inputFile.toFile()
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
