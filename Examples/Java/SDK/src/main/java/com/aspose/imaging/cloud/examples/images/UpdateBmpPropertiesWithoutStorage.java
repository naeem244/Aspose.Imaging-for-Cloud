package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateBmpPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.bmp";
        String output = "Sample2.bmp";
        Path inputFile = Common.getPath(UpdateBmpPropertiesWithoutStorage.class, input);
        Path outputFile = Common.getPath(UpdateBmpPropertiesWithoutStorage.class, output);

        Integer bitsPerPixel = 24;
        Integer horizontalResolution = 300;
        Integer verticalResolution = 300;
        Boolean fromScratch = false;
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage sr = Common.getImagingSdk().PostImageBmp(
                bitsPerPixel,
                horizontalResolution,
                verticalResolution,
                fromScratch,
                outPath,
                inputFile.toFile()
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
