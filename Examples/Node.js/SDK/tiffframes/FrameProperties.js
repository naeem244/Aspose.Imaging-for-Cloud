var fs = require('fs'),
    utils = require('../utils.js'),
    assert = require('assert'),
    image = utils.imagingApi;
    storage = utils.storageApi;

var inputName = "sample1.tiff";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.tiff";
var outputPath = utils.getPath(__filename, outputName);
var frameId = 1;
var Storage = null;
var folder = null;


storage.PutCreate(inputName, null, Storage, inputPath, function (responseMessage) {

    image.GetImageFrameProperties(inputName, frameId, folder, Storage, function(responseMessage) {
        var tiffProperties = responseMessage.body.TiffProperties;
        //assert.equal(responseMessage.status, 'OK');
        var tiffProperties = responseMessage.body.TiffProperties;

    });
});
