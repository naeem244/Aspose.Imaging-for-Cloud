package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateGifPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.gif";
        String output = "Sample2.gif";
        Path inputFile = Utils.getPath(UpdateGifPropertiesWithoutStorage.class, input);
        Path outputFile = Utils.getPath(UpdateGifPropertiesWithoutStorage.class, output);

        Integer backgroundColorIndex = 255;
        Integer colorResolution = 7;
        Boolean hasTrailer = true;
        Boolean interlaced = true;
        Boolean isPaletteSorted = true;
        Integer pixelAspectRatio = 10;
        Boolean fromScratch = false;
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage sr = Utils.getImagingSdk().PostImageGif(
                backgroundColorIndex,
                colorResolution,
                hasTrailer,
                interlaced,
                isPaletteSorted,
                pixelAspectRatio,
                fromScratch,
                outPath,
                inputFile.toFile()
        );
        
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
