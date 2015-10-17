package com.aspose.imaging.cloud.examples.tiffframes;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CropFrame {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Utils.getPath(CropFrame.class, input);
        String output = "Sample2.tiff";
        Path outputFile = Utils.getPath(CropFrame.class, output);

        Integer frameId = 0;
        Integer newWidth = 200;
        Integer newHeight = 200;
        Integer x = 20;
        Integer y = 20;
        Integer rectWidth = 100;
        Integer rectHeight = 100;
        String rotateFlipMethod = "";
        Boolean saveOtherFrames = false;
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Utils.getImagingSdk().GetImageFrame(
                        input,
                        frameId,
                        newWidth,
                        newHeight,
                        x,
                        y,
                        rectWidth,
                        rectHeight,
                        rotateFlipMethod,
                        saveOtherFrames,
                        outPath,
                        Utils.FOLDER,
                        Utils.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
