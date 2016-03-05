var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
storage = utils.storageApi;

var inputName = "sample1.png";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.nodejsSDK.output.jpg";
var outputPath = utils.getPath(__filename, outputName);

var format = 'jpeg';

image.PostImageSaveAs(format, null, inputPath, function (responseMessage) {
    var writeStream = fs.createWriteStream(outputPath);
    writeStream.write(responseMessage.body);
});

