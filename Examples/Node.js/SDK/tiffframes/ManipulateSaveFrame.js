var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);

var frameId = 1;
var rotateFlipMethod = "rotate90flipnone";
var folder = null;
var Storage = null;

storage.PutCreate(inputName, null, Storage,inputPath, function(responseMessage) {
    //assert.equal(responseMessage.status, 'OK');

    //invoke Aspose.Imaging Cloud SDK API to extract and crop a frame from a Tiff image
    image.GetImageFrame(inputName, frameId, null, null, null, null, null, null, rotateFlipMethod, null, null, folder, storage, function(responseMessage) {
        var writeStream = fs.createWriteStream(outputPath);
       // writeStream.write(responseMessage.body);
        console.log('Image manipulated at',outputPath);
    });
});
