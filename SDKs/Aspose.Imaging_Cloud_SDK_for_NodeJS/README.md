# Aspose.Imaging Cloud SDK for Node.js

This repository contains Aspose.Imaging Cloud SDK for Node.js source code. This SDK allows you to work with Aspose.Imaging Cloud REST APIs in your Node.js applications quickly and easily. 

## How to use the SDK?

The complete source code is available in this repository folder. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/imagingcloud/How+to+Setup+Aspose.Imaging+Cloud+SDK+for+Node.js).

## Quick SDK Tutorial
```javascript
var fs = require('fs');
var assert = require('assert');
var StorageApi =require("asposestoragecloud")
var ImagingApi = require('asposeimagingcloud');

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey};
var data_path = '../data/';

try {
//Instantiate Aspose.Storage API SDK
var storageApi = new StorageApi(config);

//Instantiate Aspose.Imaging API SDK
var imagingApi = new ImagingApi(config);

//set input file name
var filename = "aspose";
var name =  filename + ".jpg";
var format = "png";
var storage = null;
var folder= null;

//upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, file= data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	//invoke Aspose.Imaging Cloud SDK API to convert image to other formats
	imagingApi.GetImageSaveAs(name, format, null, folder, storage, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');		
			//download converted image from api response
			var outfilename = filename + '.' + format;
			var writeStream = fs.createWriteStream('c:/temp/' + outfilename);
			writeStream.write(responseMessage.body);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
```