package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class MergeTiffImages {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        String output = "Sample2.tiff";
        String appendWith="append.tiff";
        Path inputFile = Utils.getPath(MergeTiffImages.class, input);
        Path outputFile = Utils.getPath(MergeTiffImages.class, output);
        Path appendWithFile = Utils.getPath(MergeTiffImages.class, appendWith);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        Utils.getStorageSdk().PutCreate(
                appendWith,
                null,
                Utils.STORAGE,
                appendWithFile.toFile()
        );

        Utils.getImagingSdk().PostTiffAppend(
                input, 
                appendWith, 
                Utils.STORAGE,
                Utils.FOLDER
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
