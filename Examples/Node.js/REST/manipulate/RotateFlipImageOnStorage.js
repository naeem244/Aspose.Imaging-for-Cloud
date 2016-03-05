var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'Sample1.png';


var input_file = 'sample1.png';
var inputPath = getPath(__filename, input_file);
var output_file = 'nodejsREST.output.jpg';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);


UploadFileBinary(
    method,
    Sign(request_url),
    input_buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(inputPath, 'has been uploaded');
        }

        var method = 'GET';
        var request_url ='imaging/sample1.png/rotateflip?format=jpeg&method=rotate270flipxy&outPath=' + output_file;
        ProcessCommandContent(
            method,
            Sign(request_url),
            null,
            function(buffer) {
                fs.writeFileSync(outputPath, buffer);
                console.log('File Saved', outputPath)
            }
        );
    }
);
