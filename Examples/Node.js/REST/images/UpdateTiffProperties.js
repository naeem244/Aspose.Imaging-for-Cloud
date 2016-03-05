var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.tiff';
var inputPath = getPath(__filename, input_file);
var output_file = 'output.tiff';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.tiff';
UploadFileBinary(
    method,
    Sign(request_url),
    input_buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(inputPath, 'has been uploaded');
        }
        var method = 'POST';
        var request_url = 'imaging/sample1.tiff/tiff?resolutionUnit=inch&newWidth=2&newHeight=2&horizontalResolution=2&verticalResolution=2&outpath=' + output_file;

        ProcessCommandContent(
            method,
            Sign(request_url),
            null,
            function(buffer) {
                fs.writeFileSync(outputPath, buffer);
            }
        );
    }
);