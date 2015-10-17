package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdatePsdPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.psd";
        String output = "Sample2.psd";
        Path inputFile = Utils.getPath(UpdatePsdPropertiesWithoutStorage.class, input);
        Path outputFile = Utils.getPath(UpdatePsdPropertiesWithoutStorage.class, output);

        Integer channelsCount = 3;
        String compressionMethod = "rle";
        Boolean fromScratch = false;
        String outPath ="";

        com.aspose.imaging.model.ResponseMessage apiResponse = Utils.getImagingSdk().PostImagePsd(
                channelsCount, 
                compressionMethod, 
                fromScratch, 
                outPath, 
                inputFile.toFile()
        );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
