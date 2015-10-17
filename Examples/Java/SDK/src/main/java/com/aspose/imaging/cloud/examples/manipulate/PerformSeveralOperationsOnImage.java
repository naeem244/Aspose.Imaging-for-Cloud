package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class PerformSeveralOperationsOnImage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.jpg";
        String output = "Sample2.jpg";
        Path inputFile = Utils.getPath(PerformSeveralOperationsOnImage.class, input);
        Path outputFile = Utils.getPath(PerformSeveralOperationsOnImage.class, output);

        String format = "jpg";
        Integer newWidth = 200;
        Integer newHeight = 200;
        Integer x = 100;
        Integer y = 100;
        Integer rectWidth = 100;
        Integer rectHeight = 100;
        String rotateFlipMethod = "rotate90flipnone";
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Utils.getImagingSdk().PostImageSaveAs(
                        format, 
                        newWidth, 
                        newHeight, 
                        x, 
                        y, 
                        rectWidth, 
                        rectHeight, 
                        rotateFlipMethod, 
                        outPath, 
                        inputFile.toFile()
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
