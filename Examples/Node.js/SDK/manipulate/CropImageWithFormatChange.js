var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.png";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.jpg";
var outputPath = utils.getPath(__filename, outputName);

var x = 10;
var y = 20;
var width = 50;
var height = 50;
var Storage = null;
var folder = null;
var save_format = 'jpg';

storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {
    image.GetCropImage(inputName, save_format, x, y, width, height, null, folder, Storage, function (responseMessage) {
        storage.GetDownload(inputName, null, null, function (responseMessage) {
            var writeStream = fs.createWriteStream(outputPath);
            writeStream.write(responseMessage.body);
        });
    });
});