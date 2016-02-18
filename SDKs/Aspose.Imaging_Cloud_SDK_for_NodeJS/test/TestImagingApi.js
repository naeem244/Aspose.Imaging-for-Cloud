var fs = require('fs');
var StorageApi = require('asposestoragecloud');
var ImagingApi = require('../lib/ImagingApi');
var assert = require('assert');

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};
var data_path = './data/';

var storageApi = new StorageApi(config); 
var imagingApi = new ImagingApi(config);
var nodeunit = require('nodeunit');

exports.testPostImageBmp = function(test){

	test.expect(1);
	
	var name =  'sample.bmp';
	var bitsPerPixel = 24;
	var horizontalResolution = 300;
	var verticalResolution = 300;
	var file = data_path + name;
	console.log('file:', file);
	imagingApi.PostImageBmp(bitsPerPixel, horizontalResolution, verticalResolution, null, null, file, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});
	
};


exports.testPostCropImage = function(test){	
	
	test.expect(1);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";
	var x = 30;
	var y = 40;
	var width = 100;
	var height = 100;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		imagingApi.PostCropImage(format, x, y, width, height, null, data_path+name, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};


exports.testPostImageJpg = function(test){
	
	test.expect(1);
	
	var name =  "aspose.jpg";
	var quality = 100;
	var compressionType = "progressive";
	
	imagingApi.PostImageJpg(quality, compressionType, null, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});
	
};

exports.testPostImagePng = function(test){
	
	test.expect(1);
	
	var name =  "aspose_imaging_for_cloud.png";
	var fromScratch = true;
		
	imagingApi.PostImagePng(fromScratch, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testPostImagePsd = function(test){
	
	test.expect(1);
	
	var name =  "sample.psd";
	var channelsCount = 3;
	var compressionMethod = "rle";
	
	imagingApi.PostImagePsd(channelsCount, compressionMethod, null, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testPostChangeImageScale = function(test){
	
	test.expect(1);
	
	var fileName = "aspose_imaging_for_cloud";
	var name =  fileName + ".png";
	var format = "jpg";
	var newWidth = 200;
	var newHeight = 200;

	imagingApi.PostChangeImageScale(format, newWidth, newHeight, null, data_path+name, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
	});

};

exports.testPostImageRotateFlip = function(test){
	
	test.expect(1);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";
	var method = "Rotate180FlipX";

	imagingApi.PostImageRotateFlip(format, method, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testPostImageSaveAs = function(test){
	
test.expect(1);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";

	imagingApi.PostImageSaveAs(format, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testPostProcessTiff = function(test){
	
	test.expect(1);
	
	var name =  "demo.tif";
	var compression = "ccittfax3";
	var resolutionUnit = "inch";
	var bitDepth = 1;

	imagingApi.PostProcessTiff(compression, resolutionUnit, bitDepth, null, null, null, null, data_path+name, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testPostTiffAppend = function(test){
	
test.expect(3);
	
	var name =  "sample.tif";
	var appendFile = "TestDemo.tif";

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		test.equal(responseMessage.status, 'OK', '');	
		
		storageApi.PutCreate(name, null, null, data_path + appendFile , function(responseMessage) {
			test.equal(responseMessage.status, 'OK', '');
			
			imagingApi.PostTiffAppend(name, appendFile, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
	});

};

exports.testGetTiffToFax = function(test){
	
	test.expect(1);
	
	var name =  "TestDemo.tif";
	
	imagingApi.GetTiffToFax(name, null, null, null, function(responseMessage) {
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');
		test.done();
	});

};

exports.testGetImageBmp = function(test){
	
test.expect(2);
	
	var name =  "sample.bmp";
	var bitsPerPixel = 24;
	var horizontalResolution = 300;
	var verticalResolution = 300;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageBmp(name, bitsPerPixel, horizontalResolution, verticalResolution, null, null, null, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetCropImage = function(test){
	
	test.expect(2);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";
	var x = 30;
	var y = 40;
	var width = 100;
	var height = 100;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetCropImage(name, format, x, y, width, height, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageFrame = function(test){
	
	test.expect(2);
	
	var name =  "sample-multi.tif";
	var frameId = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageFrameProperties(name, frameId, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageFrameProperties = function(test){
	
	test.expect(3);
	
	var name =  "TestDemo.tif";
	var frameId = 0;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageFrameProperties(name, frameId, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.BitsPerPixel !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});

};

exports.testGetImageGif = function(test){
	
	test.expect(2);
	
	var name =  "sample.gif";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageGif(name, null, null, null, null, null, null, null, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageJpg = function(test){
	
	test.expect(2);
	
	var name =  "aspose.jpg";
	var quality = 100;
	var compressionType = "progressive";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageJpg(name, quality, compressionType, null, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImagePng = function(test){
	
	test.expect(2);
	
	var name =  "aspose_imaging_for_cloud.png";
	var fromScratch = true;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImagePng(name, fromScratch, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageProperties = function(test){
	
	test.expect(3);
	
	var name =  "demo.tif";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageProperties(name, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.BitsPerPixel !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});

};

exports.testGetImagePsd = function(test){
	
	test.expect(2);
	
	var name =  "sample.psd";
	var channelsCount = 3;
	var compressionMethod = "rle";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImagePsd(name, channelsCount, compressionMethod, null, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetChangeImageScale = function(test){
	
	test.expect(2);
	
	var fileName = "aspose_imaging_for_cloud";
	var name =  fileName + ".png";
	var format = "jpg";
	var newWidth = 200;
	var newHeight = 200;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetChangeImageScale(name, format, newWidth, newHeight, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageRotateFlip = function(test){
	
	test.expect(2);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";
	var method = "Rotate180FlipX";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageRotateFlip(name, format, method, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetImageSaveAs = function(test){
	
	test.expect(2);
	
	var fileName = "aspose";
	var name =  fileName + ".jpg";
	var format = "png";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetImageSaveAs(name, format, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};

exports.testGetUpdatedImage = function(test){
	
	test.expect(2);
	
	var fileName = "TestDemo";
	var name =  fileName + ".tif";
	var format = null;
	var x = 96;
	var y = 96;
	var newWidth = 300;
	var newHeight = 300;
	var rectWidth = 200;
	var rectHeight = 200;
	var rotateFlipMethod = null;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		imagingApi.GetUpdatedImage(name, format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, null, folder, storage, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});

};
		

