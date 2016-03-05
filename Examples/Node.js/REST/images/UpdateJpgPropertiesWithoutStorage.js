var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.jpg';
var inputPath = getPath(__filename, input_file);
var output_file = 'output.jpg';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);

var method = 'POST';
var request_url = 'imaging/jpg?backgroundColorIndex=255&pixelAspectRatio=20';

ProcessCommandStream(
    method,
    Sign(request_url),
    input_buffer,
    function(output_buffer) {
        fs.writeFileSync(outputPath, output_buffer);
    }
);