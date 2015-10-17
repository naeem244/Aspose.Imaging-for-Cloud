package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePsdProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.psd";
        String output = "Sample2.psd";
        Path inputFile = Utils.getPath(UpdatePsdProperties.class, input);
        Path outputFile = Utils.getPath(UpdatePsdProperties.class, output);

        Integer channelsCount = 3;
        String compressionMethod = "rle";
        Boolean fromScratch = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getImagingSdk().GetImagePsd(
                input, 
                channelsCount, 
                compressionMethod, 
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
