package com.aspose.imaging.cloud.examples.tiffframes;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RotateFlipFrame {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        Path inputFile = Common.getPath(RotateFlipFrame.class, input);
        String output = "Sample2.tiff";
        Path outputFile = Common.getPath(RotateFlipFrame.class, output);

        Integer frameId = 0;
        Integer newWidth = 0;
        Integer newHeight = 0;
        Integer x = 0;
        Integer y = 0;
        Integer rectWidth = 0;
        Integer rectHeight = 0;
        String rotateFlipMethod = "rotate90flipnone";
        Boolean saveOtherFrames = false;
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Common.getImagingSdk().GetImageFrame(
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
                        Common.FOLDER,
                        Common.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
