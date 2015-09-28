package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RotateFlipImageOnStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.jpg";
        Path inputFile = Common.getPath(RotateFlipImageOnStorage.class, input);
        Path outputFile = Common.getPath(RotateFlipImageOnStorage.class, output);

        String format = "jpg";
        String method = "Rotate180FlipX";
        String outPath = "";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Common.getImagingSdk().GetImageRotateFlip(
                        input,
                        format,
                        method,
                        outPath,
                        Common.FOLDER,
                        Common.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
