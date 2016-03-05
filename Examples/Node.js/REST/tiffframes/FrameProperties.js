var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.tiff';
var inputPath  = getPath(__filename, input_file);
var output_file = 'nodejsREST.output.tiff';
var outputPath  = getPath(__filename, output_file);

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

        var method = 'GET';
        var request_url ='imaging/sample1.tiff/frames/0/properties';

        ProcessCommand(
            method,
            Sign(request_url),
            null,
            function(response) {
                console.log(JSON.stringify(response, null, 2));
            }
        );
    }
);
