package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateJpgProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.jpg";
        String output = "Sample2.jpg";
        Path inputFile = Common.getPath(UpdateJpgProperties.class, input);
        Path outputFile = Common.getPath(UpdateJpgProperties.class, output);

        Integer quality = 100;
        String compressionType = "progressive";
        Boolean fromScratch = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getImagingSdk().GetImageJpg(
                input, 
                quality, 
                compressionType, 
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
