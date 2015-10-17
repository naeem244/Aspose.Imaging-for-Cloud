package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePngPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.png";
        Path inputFile = Utils.getPath(UpdatePngPropertiesWithoutStorage.class, input);
        Path outputFile = Utils.getPath(UpdatePngPropertiesWithoutStorage.class, output);

        Boolean fromScratch = true;
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage sr = Utils.getImagingSdk().PostImagePng(
                fromScratch, 
                outPath, 
                inputFile.toFile()
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
