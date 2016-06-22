var path = require('path');
var fs = require('fs');
var apiClient = require('./api-client');


function ImagingApi(config) {
	var self = this;
	
	apiClient = new apiClient(config);
	this.config = apiClient.config;
}


/**
* PostImageBmp
* Update parameters of bmp image.
*
* @param  (String) bitsPerPixel  -  Color depth. (required) 
* @param  (String) horizontalResolution  -  New horizontal resolution. (required) 
* @param  (String) verticalResolution  -  New vertical resolution. (required) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageBmp = function(bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, file, callback) {

    var self = this;
	
	if( typeof bitsPerPixel === 'undefined' || bitsPerPixel === null && bitsPerPixel === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof horizontalResolution === 'undefined' || horizontalResolution === null && horizontalResolution === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof verticalResolution === 'undefined' || verticalResolution === null && verticalResolution === ''){
		throw new Error('missing required parameters.');
    }   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof bitsPerPixel !== 'undefined' &&  bitsPerPixel !== null && bitsPerPixel!== ''){            
			resourcePath = resourcePath.replace("{" + "bitsPerPixel" + "}" , bitsPerPixel);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]bitsPerPixel.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCropImage
* Crop image from body
*
* @param  (String) format  -  Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required) 
* @param  (String) x  -  X position of start point for cropping rectangle (required) 
* @param  (String) y  -  Y position of start point for cropping rectangle (required) 
* @param  (String) width  -  Width of cropping rectangle (required) 
* @param  (String) height  -  Height of cropping rectangle (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostCropImage = function(format, x, y, width, height, outPath, file, callback) {

    var self = this;
	
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof x === 'undefined' || x === null && x === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof y === 'undefined' || y === null && y === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof width === 'undefined' || width === null && width === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof height === 'undefined' || height === null && height === ''){
		throw new Error('missing required parameters.');
    }  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof x !== 'undefined' &&  x !== null && x!== ''){            
			resourcePath = resourcePath.replace("{" + "x" + "}" , x);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]x.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof y !== 'undefined' &&  y !== null && y!== ''){            
			resourcePath = resourcePath.replace("{" + "y" + "}" , y);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]y.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
   
/**
* PostImageJpg
* Update parameters of jpg image.
*
* @param  (String) quality  -  Quality of image. From 0 to 100. Default is 75 (optional) 
* @param  (String) compressionType  -  Compression type. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageJpg = function(quality, compressionType, fromScratch, outPath, file, callback) {

    var self = this;
	    	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof quality !== 'undefined' &&  quality !== null && quality!== ''){            
			resourcePath = resourcePath.replace("{" + "quality" + "}" , quality);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]quality.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof compressionType !== 'undefined' &&  compressionType !== null && compressionType!== ''){            
			resourcePath = resourcePath.replace("{" + "compressionType" + "}" , compressionType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compressionType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostImagePng
* Update parameters of png image.
*
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImagePng = function(fromScratch, outPath, file, callback) {

    var self = this;
	  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostImagePsd
* Update parameters of psd image.
*
* @param  (Integer) channelsCount  -  Count of channels. (optional) 
* @param  (String) compressionMethod  -  Compression method. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImagePsd = function(channelsCount, compressionMethod, fromScratch, outPath, file, callback) {

    var self = this;
	    	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof channelsCount !== 'undefined' &&  channelsCount !== null && channelsCount!== ''){            
			resourcePath = resourcePath.replace("{" + "channelsCount" + "}" , channelsCount);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]channelsCount.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof compressionMethod !== 'undefined' &&  compressionMethod !== null && compressionMethod!== ''){            
			resourcePath = resourcePath.replace("{" + "compressionMethod" + "}" , compressionMethod);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compressionMethod.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostChangeImageScale
* Change scale of an image from body
*
* @param  (String) format  -  Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required) 
* @param  (String) newWidth  -  New width of the scaled image. (required) 
* @param  (String) newHeight  -  New height of the scaled image. (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostChangeImageScale = function(format, newWidth, newHeight, outPath, file, callback) {

    var self = this;
	
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newWidth === 'undefined' || newWidth === null && newWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newHeight === 'undefined' || newHeight === null && newHeight === ''){
		throw new Error('missing required parameters.');
    }  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newWidth !== 'undefined' &&  newWidth !== null && newWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "newWidth" + "}" , newWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newHeight !== 'undefined' &&  newHeight !== null && newHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "newHeight" + "}" , newHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostImageRotateFlip
* Rotate and flip existing image and get it from response.
*
* @param  (String) format  -  Number of frame. (Bmp, png, jpg, tiff, psd, gif.) (required) 
* @param  (String) method  -  New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY) (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageRotateFlip = function(format, method, outPath, file, callback) {

    var self = this;
	
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof method === 'undefined' || method === null && method === ''){
		throw new Error('missing required parameters.');
    }  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof method !== 'undefined' &&  method !== null && method!== ''){            
			resourcePath = resourcePath.replace("{" + "method" + "}" , method);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]method.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostImageSaveAs
* Export existing image to another format. Image is passed as request body.
*
* @param  (String) format  -  Output file format. (Bmp, png, jpg, tiff, psd, gif.) (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageSaveAs = function(format, outPath, file, callback) {

    var self = this;
	
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProcessTiff
* Update tiff image.
*
* @param  (String) compression  -  New compression. (optional) 
* @param  (String) resolutionUnit  -  New resolution unit. (optional) 
* @param  (String) bitDepth  -  New bit depth. (optional) 
* @param  (Boolean) fromScratch  -   (optional) 
* @param  (String) horizontalResolution  -  New horizontal resolution. (optional) 
* @param  (String) verticalResolution  -  New verstical resolution. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostProcessTiff = function(compression, resolutionUnit, bitDepth, fromScratch, horizontalResolution, verticalResolution, outPath, file, callback) {

    var self = this;
	       	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/tiff/?appSid={appSid}&amp;compression={compression}&amp;resolutionUnit={resolutionUnit}&amp;bitDepth={bitDepth}&amp;fromScratch={fromScratch}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof compression !== 'undefined' &&  compression !== null && compression!== ''){            
			resourcePath = resourcePath.replace("{" + "compression" + "}" , compression);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compression.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resolutionUnit !== 'undefined' &&  resolutionUnit !== null && resolutionUnit!== ''){            
			resourcePath = resourcePath.replace("{" + "resolutionUnit" + "}" , resolutionUnit);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resolutionUnit.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof bitDepth !== 'undefined' &&  bitDepth !== null && bitDepth!== ''){            
			resourcePath = resourcePath.replace("{" + "bitDepth" + "}" , bitDepth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]bitDepth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostTiffAppend
* Append tiff image.
*
* @param  (String) name  -  Original image name. (required) 
* @param  (String) appendFile  -  Second image file name. (optional) 
* @param  (String) storage  -  The images storage. (optional) 
* @param  (String) folder  -  The images folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
ImagingApi.prototype.PostTiffAppend = function(name, appendFile, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/tiff/{name}/appendTiff/?appSid={appSid}&amp;appendFile={appendFile}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof appendFile !== 'undefined' &&  appendFile !== null && appendFile!== ''){            
			resourcePath = resourcePath.replace("{" + "appendFile" + "}" , appendFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]appendFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTiffToFax
* Get tiff image for fax.
*
* @param  (String) name  -  The image file name. (required) 
* @param  (String) storage  -  The image file storage. (optional) 
* @param  (String) folder  -  The image file folder. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetTiffToFax = function(name, storage, folder, outPath, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/tiff/{name}/toFax/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageBmp
* Update parameters of bmp image.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) bitsPerPixel  -  Color depth. (required) 
* @param  (String) horizontalResolution  -  New horizontal resolution. (required) 
* @param  (String) verticalResolution  -  New vertical resolution. (required) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageBmp = function(name, bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof bitsPerPixel === 'undefined' || bitsPerPixel === null && bitsPerPixel === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof horizontalResolution === 'undefined' || horizontalResolution === null && horizontalResolution === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof verticalResolution === 'undefined' || verticalResolution === null && verticalResolution === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/imaging/{name}/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof bitsPerPixel !== 'undefined' &&  bitsPerPixel !== null && bitsPerPixel!== ''){            
			resourcePath = resourcePath.replace("{" + "bitsPerPixel" + "}" , bitsPerPixel);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]bitsPerPixel.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetCropImage
* Crop existing image
*
* @param  (String) name  -  The image name. (required) 
* @param  (String) format  -  Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required) 
* @param  (String) x  -  X position of start point for cropping rectangle (required) 
* @param  (String) y  -  Y position of start point for cropping rectangle (required) 
* @param  (String) width  -  Width of cropping rectangle (required) 
* @param  (String) height  -  Height of cropping rectangle (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetCropImage = function(name, format, x, y, width, height, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof x === 'undefined' || x === null && x === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof y === 'undefined' || y === null && y === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof width === 'undefined' || width === null && width === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof height === 'undefined' || height === null && height === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/{name}/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof x !== 'undefined' &&  x !== null && x!== ''){            
			resourcePath = resourcePath.replace("{" + "x" + "}" , x);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]x.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof y !== 'undefined' &&  y !== null && y!== ''){            
			resourcePath = resourcePath.replace("{" + "y" + "}" , y);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]y.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageFrame
* Get separate frame of tiff image
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) frameId  -  Number of frame. (required) 
* @param  (String) newWidth  -  New width of the scaled image. (optional) 
* @param  (String) newHeight  -  New height of the scaled image. (optional) 
* @param  (String) x  -  X position of start point for cropping rectangle (optional) 
* @param  (String) y  -  Y position of start point for cropping rectangle (optional) 
* @param  (String) rectWidth  -  Width of cropping rectangle (optional) 
* @param  (String) rectHeight  -  Height of cropping rectangle (optional) 
* @param  (String) rotateFlipMethod  -  RotateFlip method.(Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY,             Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY,             Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY.             Default is RotateNoneFlipNone.) (optional) 
* @param  (Boolean) saveOtherFrames  -  Include all other frames or just specified frame in response. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageFrame = function(name, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof frameId === 'undefined' || frameId === null && frameId === ''){
		throw new Error('missing required parameters.');
    }            	
		
	var resourcePath = '/imaging/{name}/frames/{frameId}/?appSid={appSid}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;saveOtherFrames={saveOtherFrames}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof frameId !== 'undefined' &&  frameId !== null && frameId!== ''){            
			resourcePath = resourcePath.replace("{" + "frameId" + "}" , frameId);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]frameId.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newWidth !== 'undefined' &&  newWidth !== null && newWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "newWidth" + "}" , newWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newHeight !== 'undefined' &&  newHeight !== null && newHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "newHeight" + "}" , newHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof x !== 'undefined' &&  x !== null && x!== ''){            
			resourcePath = resourcePath.replace("{" + "x" + "}" , x);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]x.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof y !== 'undefined' &&  y !== null && y!== ''){            
			resourcePath = resourcePath.replace("{" + "y" + "}" , y);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]y.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectWidth !== 'undefined' &&  rectWidth !== null && rectWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , rectWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectHeight !== 'undefined' &&  rectHeight !== null && rectHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , rectHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rotateFlipMethod !== 'undefined' &&  rotateFlipMethod !== null && rotateFlipMethod!== ''){            
			resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , rotateFlipMethod);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rotateFlipMethod.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof saveOtherFrames !== 'undefined' &&  saveOtherFrames !== null && saveOtherFrames!== ''){            
			resourcePath = resourcePath.replace("{" + "saveOtherFrames" + "}" , saveOtherFrames);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]saveOtherFrames.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageFrameProperties
* Get properties of a tiff frame.
*
* @param  (String) name  -  Filename with image. (required) 
* @param  (String) frameId  -  Number of frame. (required) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ImagingResponse (Map)
*/
ImagingApi.prototype.GetImageFrameProperties = function(name, frameId, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof frameId === 'undefined' || frameId === null && frameId === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/imaging/{name}/frames/{frameId}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof frameId !== 'undefined' &&  frameId !== null && frameId!== ''){            
			resourcePath = resourcePath.replace("{" + "frameId" + "}" , frameId);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]frameId.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageGif
* Update parameters of bmp image.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) backgroundColorIndex  -  Index of the background color. (optional) 
* @param  (String) colorResolution  -  Color resolution. (optional) 
* @param  (Boolean) hasTrailer  -  Specifies if image has trailer. (optional) 
* @param  (Boolean) interlaced  -  Specifies if image is interlaced. (optional) 
* @param  (Boolean) isPaletteSorted  -  Specifies if palette is sorted. (optional) 
* @param  (String) pixelAspectRatio  -  Pixel aspect ratio. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageGif = function(name, backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }           	
		
	var resourcePath = '/imaging/{name}/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof backgroundColorIndex !== 'undefined' &&  backgroundColorIndex !== null && backgroundColorIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "backgroundColorIndex" + "}" , backgroundColorIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]backgroundColorIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof colorResolution !== 'undefined' &&  colorResolution !== null && colorResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "colorResolution" + "}" , colorResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]colorResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hasTrailer !== 'undefined' &&  hasTrailer !== null && hasTrailer!== ''){            
			resourcePath = resourcePath.replace("{" + "hasTrailer" + "}" , hasTrailer);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hasTrailer.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof interlaced !== 'undefined' &&  interlaced !== null && interlaced!== ''){            
			resourcePath = resourcePath.replace("{" + "interlaced" + "}" , interlaced);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]interlaced.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isPaletteSorted !== 'undefined' &&  isPaletteSorted !== null && isPaletteSorted!== ''){            
			resourcePath = resourcePath.replace("{" + "isPaletteSorted" + "}" , isPaletteSorted);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isPaletteSorted.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pixelAspectRatio !== 'undefined' &&  pixelAspectRatio !== null && pixelAspectRatio!== ''){            
			resourcePath = resourcePath.replace("{" + "pixelAspectRatio" + "}" , pixelAspectRatio);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pixelAspectRatio.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageJpg
* Update parameters of jpg image.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) quality  -  Quality of image. From 0 to 100. Default is 75 (optional) 
* @param  (String) compressionType  -  Compression type. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageJpg = function(name, quality, compressionType, fromScratch, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }       	
		
	var resourcePath = '/imaging/{name}/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof quality !== 'undefined' &&  quality !== null && quality!== ''){            
			resourcePath = resourcePath.replace("{" + "quality" + "}" , quality);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]quality.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof compressionType !== 'undefined' &&  compressionType !== null && compressionType!== ''){            
			resourcePath = resourcePath.replace("{" + "compressionType" + "}" , compressionType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compressionType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImagePng
* Update parameters of png image.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImagePng = function(name, fromScratch, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/imaging/{name}/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageProperties
* Get properties of an image.
*
* @param  (String) name  -  The image name. (required) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ImagingResponse (Map)
*/
ImagingApi.prototype.GetImageProperties = function(name, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/imaging/{name}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImagePsd
* Update parameters of psd image.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (Integer) channelsCount  -  Count of channels. (optional) 
* @param  (String) compressionMethod  -  Compression method. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImagePsd = function(name, channelsCount, compressionMethod, fromScratch, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }       	
		
	var resourcePath = '/imaging/{name}/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof channelsCount !== 'undefined' &&  channelsCount !== null && channelsCount!== ''){            
			resourcePath = resourcePath.replace("{" + "channelsCount" + "}" , channelsCount);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]channelsCount.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof compressionMethod !== 'undefined' &&  compressionMethod !== null && compressionMethod!== ''){            
			resourcePath = resourcePath.replace("{" + "compressionMethod" + "}" , compressionMethod);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compressionMethod.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetChangeImageScale
* Change scale of an existing image
*
* @param  (String) name  -  The image name. (required) 
* @param  (String) format  -  Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required) 
* @param  (String) newWidth  -  New width of the scaled image. (required) 
* @param  (String) newHeight  -  New height of the scaled image. (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetChangeImageScale = function(name, format, newWidth, newHeight, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newWidth === 'undefined' || newWidth === null && newWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newHeight === 'undefined' || newHeight === null && newHeight === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/{name}/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newWidth !== 'undefined' &&  newWidth !== null && newWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "newWidth" + "}" , newWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newHeight !== 'undefined' &&  newHeight !== null && newHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "newHeight" + "}" , newHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageRotateFlip
* Rotate and flip existing image
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) format  -  Number of frame. (Bmp, png, jpg, tiff, psd, gif.) (required) 
* @param  (String) method  -  New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY) (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageRotateFlip = function(name, format, method, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof method === 'undefined' || method === null && method === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/{name}/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof method !== 'undefined' &&  method !== null && method!== ''){            
			resourcePath = resourcePath.replace("{" + "method" + "}" , method);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]method.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageSaveAs
* Export existing image to another format
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) format  -  Output file format. (Bmp, png, jpg, tiff, psd, gif.) (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetImageSaveAs = function(name, format, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/{name}/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetUpdatedImage
* Perform scaling, cropping and flipping of an image in single request.
*
* @param  (String) name  -  Filename of image. (required) 
* @param  (String) format  -  Save image in another format. By default format remains the same (required) 
* @param  (String) newWidth  -  New Width of the scaled image. (required) 
* @param  (String) newHeight  -  New height of the scaled image. (required) 
* @param  (String) x  -  X position of start point for cropping rectangle (required) 
* @param  (String) y  -  Y position of start point for cropping rectangle (required) 
* @param  (String) rectWidth  -  Width of cropping rectangle (required) 
* @param  (String) rectHeight  -  Height of cropping rectangle (required) 
* @param  (String) rotateFlipMethod  -  RotateFlip method. Default is RotateNoneFlipNone. (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (String) folder  -  Folder with image to process. (optional) 
* @param  (String) storage  -   (optional) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.GetUpdatedImage = function(name, format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newWidth === 'undefined' || newWidth === null && newWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newHeight === 'undefined' || newHeight === null && newHeight === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof x === 'undefined' || x === null && x === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof y === 'undefined' || y === null && y === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rectWidth === 'undefined' || rectWidth === null && rectWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rectHeight === 'undefined' || rectHeight === null && rectHeight === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rotateFlipMethod === 'undefined' || rotateFlipMethod === null && rotateFlipMethod === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/imaging/{name}/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newWidth !== 'undefined' &&  newWidth !== null && newWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "newWidth" + "}" , newWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newHeight !== 'undefined' &&  newHeight !== null && newHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "newHeight" + "}" , newHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof x !== 'undefined' &&  x !== null && x!== ''){            
			resourcePath = resourcePath.replace("{" + "x" + "}" , x);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]x.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof y !== 'undefined' &&  y !== null && y!== ''){            
			resourcePath = resourcePath.replace("{" + "y" + "}" , y);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]y.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectWidth !== 'undefined' &&  rectWidth !== null && rectWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , rectWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectHeight !== 'undefined' &&  rectHeight !== null && rectHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , rectHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rotateFlipMethod !== 'undefined' &&  rotateFlipMethod !== null && rotateFlipMethod!== ''){            
			resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , rotateFlipMethod);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rotateFlipMethod.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    

/**
* PostImageGif
* Update parameters of gif image.
*
* @param  (String) backgroundColorIndex  -  Index of the background color. (optional) 
* @param  (array) colorResolution  -  Color resolution. (optional) 
* @param  (array) hasTrailer  -  Specifies if image has trailer. (optional) 
* @param  (Integer) interlaced  -  Specifies if image is interlaced. (optional) 
* @param  (Boolean) isPaletteSorted  -  Specifies if palette is sorted. (optional) 
* @param  (String) pixelAspectRatio  -  Pixel aspect ratio. (optional) 
* @param  (Boolean) fromScratch  -  Specifies where additional parameters we do not support should be taken from. If this is true â€“ they will be taken from default values for standard image, if it is false â€“ they will be saved from current image. Default is false. (optional) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageGif = function(backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, file, callback) {

    var self = this;
	        	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof backgroundColorIndex !== 'undefined' &&  backgroundColorIndex !== null && backgroundColorIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "backgroundColorIndex" + "}" , backgroundColorIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]backgroundColorIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof colorResolution !== 'undefined' &&  colorResolution !== null && colorResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "colorResolution" + "}" , colorResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]colorResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hasTrailer !== 'undefined' &&  hasTrailer !== null && hasTrailer!== ''){            
			resourcePath = resourcePath.replace("{" + "hasTrailer" + "}" , hasTrailer);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hasTrailer.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof interlaced !== 'undefined' &&  interlaced !== null && interlaced!== ''){            
			resourcePath = resourcePath.replace("{" + "interlaced" + "}" , interlaced);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]interlaced.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isPaletteSorted !== 'undefined' &&  isPaletteSorted !== null && isPaletteSorted!== ''){            
			resourcePath = resourcePath.replace("{" + "isPaletteSorted" + "}" , isPaletteSorted);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isPaletteSorted.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pixelAspectRatio !== 'undefined' &&  pixelAspectRatio !== null && pixelAspectRatio!== ''){            
			resourcePath = resourcePath.replace("{" + "pixelAspectRatio" + "}" , pixelAspectRatio);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pixelAspectRatio.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fromScratch !== 'undefined' &&  fromScratch !== null && fromScratch!== ''){            
			resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , fromScratch);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fromScratch.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

/**
* PostImageOperationsSaveAs
* Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
*
* @param  (String) format  -  Save image in another format. By default format remains the same (required) 
* @param  (String) newWidth  -  New Width of the scaled image. (required) 
* @param  (String) newHeight  -  New height of the scaled image. (required) 
* @param  (String) x  -  X position of start point for cropping rectangle (required) 
* @param  (String) y  -  Y position of start point for cropping rectangle (required) 
* @param  (String) rectWidth  -  Width of cropping rectangle (required) 
* @param  (String) rectHeight  -  Height of cropping rectangle (required) 
* @param  (String) rotateFlipMethod  -  RotateFlip method. Default is RotateNoneFlipNone. (required) 
* @param  (String) outPath  -  Path to updated file, if this is empty, response contains streamed image. (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
ImagingApi.prototype.PostImageOperationsSaveAs = function(format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, file, callback) {

    var self = this;
	
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newWidth === 'undefined' || newWidth === null && newWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newHeight === 'undefined' || newHeight === null && newHeight === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof x === 'undefined' || x === null && x === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof y === 'undefined' || y === null && y === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rectWidth === 'undefined' || rectWidth === null && rectWidth === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rectHeight === 'undefined' || rectHeight === null && rectHeight === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rotateFlipMethod === 'undefined' || rotateFlipMethod === null && rotateFlipMethod === ''){
		throw new Error('missing required parameters.');
    }  	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/imaging/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newWidth !== 'undefined' &&  newWidth !== null && newWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "newWidth" + "}" , newWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newHeight !== 'undefined' &&  newHeight !== null && newHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "newHeight" + "}" , newHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof x !== 'undefined' &&  x !== null && x!== ''){            
			resourcePath = resourcePath.replace("{" + "x" + "}" , x);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]x.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof y !== 'undefined' &&  y !== null && y!== ''){            
			resourcePath = resourcePath.replace("{" + "y" + "}" , y);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]y.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectWidth !== 'undefined' &&  rectWidth !== null && rectWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , rectWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectHeight !== 'undefined' &&  rectHeight !== null && rectHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , rectHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rotateFlipMethod !== 'undefined' &&  rotateFlipMethod !== null && rotateFlipMethod!== ''){            
			resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , rotateFlipMethod);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rotateFlipMethod.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

module.exports = ImagingApi


