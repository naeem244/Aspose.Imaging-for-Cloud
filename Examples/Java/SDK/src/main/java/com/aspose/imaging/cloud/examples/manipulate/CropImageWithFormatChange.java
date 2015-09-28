package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CropImageWithFormatChange {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.jpg";
        Path inputFile = Common.getPath(CropImageWithFormatChange.class, input);
        Path outputFile = Common.getPath(CropImageWithFormatChange.class, output);

        Integer x = 30;
        Integer y = 40;
        Integer width = 100;
        Integer height = 100;
        String format = "jpg";
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Common.getImagingSdk().GetCropImage(
                        input,
                        format,
                        x,
                        y,
                        width,
                        height,
                        outPath,
                        Common.FOLDER,
                        Common.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
