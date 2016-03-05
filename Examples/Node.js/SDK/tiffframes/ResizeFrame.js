var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);

var frameId = 0;
var newWidth = 300;
var newHeight = 300;
var x = 96;
var y = 96;
var rectWidth = 200;
var rectHeight = 200;
var storage = null;
var folder = null;

image.GetImageFrame(inputName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, null, null, null, folder, storage, function(responseMessage) {
    var writeStream = fs.createWriteStream(outputPath);
    writeStream.write(responseMessage.body);
});
