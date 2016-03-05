var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);

var frameId = 0;
var newWidth = 200;
var newHeight = 200;
var x = 20;
var y = 20;
var rectWidth = 100;
var rectHeight = 100;
var Storage = null;
var folder = null;

storage.PutCreate(inputName, null, Storage,inputPath, function(responseMessage) {
    image.GetImageFrame(inputName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, null, null, null, folder, Storage, function(responseMessage) {
        var writeStream = fs.createWriteStream(outputPath);
        writeStream.write(responseMessage.body);
    });
});
