var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.tiff';
var inputPath = getPath(__filename, input_file);
var output_file = 'output.tiff';
var outputPath = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);

var method = 'POST';
var request_url ='imaging/tiff?compression=ccittfax3&bitDepth=1';

ProcessCommandStream(
    method,
    Sign(request_url),
    input_buffer,
    function (output_buffer) {
        fs.writeFileSync(outputPath, output_buffer);
    }
);