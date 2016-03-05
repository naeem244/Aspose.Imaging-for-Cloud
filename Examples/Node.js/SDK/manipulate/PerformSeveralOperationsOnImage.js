var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.jpg";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.jpg";
var outputPath = utils.getPath(__filename, outputName);

var format = "jpeg";
var x = 96;
var y = 96;
var newWidth = 300;
var newHeight = 300;
var rectWidth = 200;
var rectHeight = 200;
var rotateFlipMethod = "RotateNoneFlipNone";

image.PostImageOperationsSaveAs(format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, null, inputPath, function(responseMessage) {
    storage.GetDownload(inputName, null, null, function (responseMessage) {
            var writeStream = fs.createWriteStream(outputPath);
            writeStream.write(responseMessage.body);
        });
    });
