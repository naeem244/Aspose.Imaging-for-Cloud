package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateJpgPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.jpg";
        String output = "Sample2.jpg";
        Path inputFile = Utils.getPath(UpdateJpgPropertiesWithoutStorage.class, input);
        Path outputFile = Utils.getPath(UpdateJpgPropertiesWithoutStorage.class, output);

        Integer quality = 100;
        String compressionType = "progressive";
        Boolean fromScratch = false;
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage sr = Utils.getImagingSdk().PostImageJpg(
                quality, 
                compressionType, 
                fromScratch, 
                outPath, 
                inputFile.toFile()
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
