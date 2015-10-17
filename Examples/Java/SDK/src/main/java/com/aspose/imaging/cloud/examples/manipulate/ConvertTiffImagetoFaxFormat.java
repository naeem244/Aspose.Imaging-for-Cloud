package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertTiffImagetoFaxFormat {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        String output = "Sample2.tif";
        Path inputFile = Utils.getPath(ConvertTiffImagetoFaxFormat.class, input);
        Path outputFile = Utils.getPath(ConvertTiffImagetoFaxFormat.class, output);
        
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Utils.getImagingSdk().GetTiffToFax(
                        input, 
                        Utils.STORAGE,
                        Utils.FOLDER,
                        outPath
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
