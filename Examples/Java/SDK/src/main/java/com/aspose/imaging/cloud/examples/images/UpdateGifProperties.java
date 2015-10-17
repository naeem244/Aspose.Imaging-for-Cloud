package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateGifProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.gif";
        String output = "Sample2.gif";
        Path inputFile = Utils.getPath(UpdateGifProperties.class, input);
        Path outputFile = Utils.getPath(UpdateGifProperties.class, output);

        Integer backgroundColorIndex = 255;
        Integer colorResolution = 7;
        Boolean hasTrailer = true;
        Boolean interlaced = true;
        Boolean isPaletteSorted = true;
        Integer pixelAspectRatio = 10;
        Boolean fromScratch = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getImagingSdk().GetImageGif(
                input,
                backgroundColorIndex,
                colorResolution,
                hasTrailer,
                interlaced,
                isPaletteSorted,
                pixelAspectRatio,
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
