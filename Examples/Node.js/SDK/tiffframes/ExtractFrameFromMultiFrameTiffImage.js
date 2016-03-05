var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);
var frameId = 0;
var Storage = null;
var folder = null;


storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {

    image.GetImageFrame(inputName, frameId, null, null, null, null, null, null, null, null, null, folder, storage, function(responseMessage) {
        var writeStream = fs.createWriteStream(outputPath);

    });
});

