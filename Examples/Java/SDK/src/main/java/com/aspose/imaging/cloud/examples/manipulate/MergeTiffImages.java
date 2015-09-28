package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class MergeTiffImages {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        String output = "Sample2.tiff";
        String appendWith="append.tiff";
        Path inputFile = Common.getPath(MergeTiffImages.class, input);
        Path outputFile = Common.getPath(MergeTiffImages.class, output);
        Path appendWithFile = Common.getPath(MergeTiffImages.class, appendWith);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        Common.getStorageSdk().PutCreate(
                appendWith,
                null,
                Common.STORAGE,
                appendWithFile.toFile()
        );

        Common.getImagingSdk().PostTiffAppend(
                input, 
                appendWith, 
                Common.STORAGE, 
                Common.FOLDER
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
