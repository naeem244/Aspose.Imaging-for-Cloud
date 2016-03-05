var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);

var Storage = null;
var folder = null;

storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {
    image.GetTiffToFax(inputName, Storage, folder, null, function(responseMessage) {
        storage.GetDownload(inputName, null, null, function (responseMessage) {
            var writeStream = fs.createWriteStream(outputPath);
            writeStream.write(responseMessage.body);
        });
    });
});