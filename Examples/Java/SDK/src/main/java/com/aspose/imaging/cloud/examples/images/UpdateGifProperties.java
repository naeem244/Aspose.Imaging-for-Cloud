package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateGifProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.gif";
        String output = "Sample2.gif";
        Path inputFile = Common.getPath(UpdateGifProperties.class, input);
        Path outputFile = Common.getPath(UpdateGifProperties.class, output);

        Integer backgroundColorIndex = 255;
        Integer colorResolution = 7;
        Boolean hasTrailer = true;
        Boolean interlaced = true;
        Boolean isPaletteSorted = true;
        Integer pixelAspectRatio = 10;
        Boolean fromScratch = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getImagingSdk().GetImageGif(
                input,
                backgroundColorIndex,
                colorResolution,
                hasTrailer,
                interlaced,
                isPaletteSorted,
                pixelAspectRatio,
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
