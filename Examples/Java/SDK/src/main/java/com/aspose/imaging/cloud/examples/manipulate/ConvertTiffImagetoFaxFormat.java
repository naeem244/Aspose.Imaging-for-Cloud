package com.aspose.imaging.cloud.examples.manipulate;

import com.aspose.imaging.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertTiffImagetoFaxFormat {

    public static void main(String... args) throws IOException {
        String input = "Sample1.tiff";
        String output = "Sample2.tif";
        Path inputFile = Common.getPath(ConvertTiffImagetoFaxFormat.class, input);
        Path outputFile = Common.getPath(ConvertTiffImagetoFaxFormat.class, output);
        
        String outPath = "";

        com.aspose.imaging.model.ResponseMessage apiResponse
                = Common.getImagingSdk().GetTiffToFax(
                        input, 
                        Common.STORAGE, 
                        Common.FOLDER, 
                        outPath
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
