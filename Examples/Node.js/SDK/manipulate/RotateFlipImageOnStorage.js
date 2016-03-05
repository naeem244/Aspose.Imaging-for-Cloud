var fs = require('fs'),
    utils = require('../utils.js'),
    assert = require('assert'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.png";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.jpg";
var outputPath = utils.getPath(__filename, outputName);

var format = "jpg";
var method = "Rotate90FlipX";
var Storage = null;
var folder = null;

storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {
    image.GetImageRotateFlip(inputName, format, method, null, folder, Storage, function(responseMessage) {

        storage.GetDownload(inputName, null, null, function (responseMessage) {
            var writeStream = fs.createWriteStream(outputPath);
            writeStream.write(responseMessage.body);
        });
    });
});