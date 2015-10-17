package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CropImageWithFormatChange {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.jpg";
        Path inputFile = Utils.getPath(CropImageWithFormatChange.class, input);
        Path outputFile = Utils.getPath(CropImageWithFormatChange.class, output);

        Integer x = 30;
        Integer y = 40;
        Integer width = 100;
        Integer height = 100;
        String format = "jpg";
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Utils.getImagingSdk().GetCropImage(
                        input,
                        format,
                        x,
                        y,
                        width,
                        height,
                        outPath,
                        Utils.FOLDER,
                        Utils.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
