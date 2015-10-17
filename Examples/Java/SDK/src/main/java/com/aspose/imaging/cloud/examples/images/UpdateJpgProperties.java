package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateJpgProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.jpg";
        String output = "Sample2.jpg";
        Path inputFile = Utils.getPath(UpdateJpgProperties.class, input);
        Path outputFile = Utils.getPath(UpdateJpgProperties.class, output);

        Integer quality = 100;
        String compressionType = "progressive";
        Boolean fromScratch = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getImagingSdk().GetImageJpg(
                input, 
                quality, 
                compressionType, 
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
