var utils = require("../utils.js");
var fs = require('fs');

var input_file = 'sample1.png';
var inputPath  = getPath(__filename, input_file);
var output_file = 'nodejsREST.output.jpg';
var outputPath  = getPath(__filename, output_file);

var input_buffer = fs.readFileSync(inputPath);

var method = 'GET';
var request_url ='imaging/sample1.png/updateimage?rotateFlipMethod=rotate90flipnone&newWidth=200&newHeight=200&x=20&y=20&rectWidth=150&rectHeight=100&format=jpeg&outPath=' + output_file;

ProcessCommandContent(
    method,
    Sign(request_url),
    null,
    function(buffer) {
        fs.writeFileSync(outputPath, buffer);
    }
);
