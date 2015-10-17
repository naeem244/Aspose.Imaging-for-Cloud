package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RotateFlipImageOnStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.png";
        String output = "Sample2.jpg";
        Path inputFile = Utils.getPath(RotateFlipImageOnStorage.class, input);
        Path outputFile = Utils.getPath(RotateFlipImageOnStorage.class, output);

        String format = "jpg";
        String method = "Rotate180FlipX";
        String outPath = "";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Utils.getImagingSdk().GetImageRotateFlip(
                        input,
                        format,
                        method,
                        outPath,
                        Utils.FOLDER,
                        Utils.STORAGE
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
