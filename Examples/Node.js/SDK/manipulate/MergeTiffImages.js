var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var appendName = "append.tiff";
var appendPath = utils.getPath(__filename, appendName);

var outPutName = 'nodejsSDK.output.tiff';
var outputPath = utils.getPath(__filename, outPutName);


var Storage = null;
var folder = null;

storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {
    storage.PutCreate(appendName, null, Storage, appendPath, function (responseMessage) {


        image.PostTiffAppend(inputName, appendName, Storage, folder, function(responseMessage) {
            storage.GetDownload(inputName, null, null, function(responseMessage) {
                var writeStream = fs.createWriteStream(outputPath);
                writeStream.write(responseMessage.body);
            });
        });
    });
});