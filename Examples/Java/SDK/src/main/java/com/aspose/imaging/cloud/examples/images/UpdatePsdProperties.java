package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePsdProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.psd";
        String output = "Sample2.psd";
        Path inputFile = Common.getPath(UpdatePsdProperties.class, input);
        Path outputFile = Common.getPath(UpdatePsdProperties.class, output);

        Integer channelsCount = 3;
        String compressionMethod = "rle";
        Boolean fromScratch = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getImagingSdk().GetImagePsd(
                input, 
                channelsCount, 
                compressionMethod, 
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
