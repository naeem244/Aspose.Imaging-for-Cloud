package com.aspose.imaging.cloud.examples.images;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateTiffPropertiesWithoutStorage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        String output = "Sample2.tiff";
        Path inputFile = Utils.getPath(UpdateTiffPropertiesWithoutStorage.class, input);
        Path outputFile = Utils.getPath(UpdateTiffPropertiesWithoutStorage.class, output);

        String compression = "ccittfax3";
        String resolutionUnit = "inch";
        Integer bitDepth = 1;
        Boolean fromScratch = false;
        Float horizontalResolution = 96.0f;
        Float verticalResolution = 96.0f;
        String outPath ="";

        com.aspose.imaging.model.ResponseMessage apiResponse = Utils.getImagingSdk().PostProcessTiff (
                compression, 
                resolutionUnit, 
                bitDepth, 
                fromScratch, 
                horizontalResolution, 
                verticalResolution, 
                outPath, 
                inputFile.toFile()
        );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
