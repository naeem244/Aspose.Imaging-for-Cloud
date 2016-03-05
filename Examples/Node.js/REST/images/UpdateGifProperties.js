var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.gif';
var inputPath = getPath(__filename, input_file);
var output_file = 'output.gif';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.gif';
UploadFileBinary(
    method,
    Sign(request_url),
    input_buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(inputPath, 'has been uploaded');
        }

        var method = 'GET';
        var request_url = 'imaging/sample1.gif/gif?bitsPerPixel=32&horizontalResolution=300&verticalResolution=300&outPath=' + output_file;

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