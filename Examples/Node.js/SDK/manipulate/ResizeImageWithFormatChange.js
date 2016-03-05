var fs = require('fs'),
    utils = require('../utils.js'),
    image = utils.imagingApi;
storage = utils.storageApi;

var inputName = "sample1.png";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "nodejsSDK.output.jpg";
var outputPath = utils.getPath(__filename, outputName);

var format = 'jpeg';
var newWidth = 200;
var newHeight = 200;


image.PostChangeImageScale(format, newWidth, newHeight, null, inputPath, function(responseMessage) {
    var writeStream = fs.createWriteStream(outputPath);
    writeStream.write(responseMessage.body);
});

