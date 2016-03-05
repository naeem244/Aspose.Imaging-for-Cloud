var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'Sample1.png';


var input_file = 'sample1.tiff';
var inputPath = getPath(__filename, input_file);
var append_file = 'append.tiff';
var appendPath = getPath(__filename, append_file);


var output_file = 'nodejsREST.output.tiff';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);
var append_buffer = fs.readFileSync(appendPath);



UploadFileBinary(
    method,
    Sign(request_url),
    input_buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(inputPath, 'has been uploaded');
        }
        UploadFileBinary(
            method,
            Sign(request_url),
            append_buffer,
            function (response) {
                if (response.Status == 'OK') {
                    console.log(appendPath, 'has been uploaded');
                }


                var method = 'POST';
                var request_url = 'imaging/tiff/append.tiff/appendTiff?appendFile=sample1.tiff';

                ProcessCommand(
                    method,
                    Sign(request_url),
                    null,
                    function (response) {
                        console.log(JSON.stringify(response, null, 2));


                        var method = 'GET';
                        var request_url = 'storage/file/' + 'sample1.tiff';
                        ProcessCommandContent(
                            method,
                            Sign(request_url),
                            null,
                            function(buffer) {
                                fs.writeFileSync(outputPath, buffer);
                                console.log('File saved', outputPath);
                            }
                        );
                    }
                );
            }
        );
    }
);


