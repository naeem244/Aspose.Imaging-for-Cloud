  using System;
  using System.Collections.Generic;
  using System.Text.RegularExpressions;
  using Com.Aspose.Imaging;
  using Com.Aspose.Imaging.Model;
  namespace Com.Aspose.Imaging.Api {
    public class ImagingApi {
      string basePath;
      private readonly ApiInvoker apiInvoker = ApiInvoker.GetInstance();

      public ImagingApi(String apiKey, String appSid, String basePath = "http://api.aspose.com/v1.1")
      {
	apiInvoker.apiKey = apiKey;
        apiInvoker.appSid = appSid;
        this.basePath = basePath;
      }

      public ApiInvoker getInvoker() {
        return apiInvoker;
      }

      // Sets the endpoint base url for the services being accessed
      public void setBasePath(string basePath) {
        this.basePath = basePath;
      }

      // Gets the endpoint base url for the services being accessed
      public String getBasePath() {
        return basePath;
      }

      /// <summary>
      /// Update parameters of bmp image. Update parameters of bmp image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="bitsPerPixel"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageBmp (string name, int? bitsPerPixel, int? horizontalResolution, int? verticalResolution, bool? fromScratch, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || bitsPerPixel == null || horizontalResolution == null || verticalResolution == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (bitsPerPixel == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])bitsPerPixel=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "bitsPerPixel" + "}", apiInvoker.ToPathValue(bitsPerPixel)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of bmp image. Update parameters of bmp image.
      /// </summary>
      /// <param name="bitsPerPixel"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageBmp (int? bitsPerPixel, int? horizontalResolution, int? verticalResolution, bool? fromScratch, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (bitsPerPixel == null || horizontalResolution == null || verticalResolution == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (bitsPerPixel == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])bitsPerPixel=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "bitsPerPixel" + "}", apiInvoker.ToPathValue(bitsPerPixel)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Crop existing image Crop existing image
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="x"></param>
      /// <param name="y"></param>
      /// <param name="width"></param>
      /// <param name="height"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetCropImage (string name, string format, int? x, int? y, int? width, int? height, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null || x == null || y == null || width == null || height == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (x == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])x=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "x" + "}", apiInvoker.ToPathValue(x)); 
		}
        if (y == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])y=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "y" + "}", apiInvoker.ToPathValue(y)); 
		}
        if (width == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])width=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "width" + "}", apiInvoker.ToPathValue(width)); 
		}
        if (height == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])height=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "height" + "}", apiInvoker.ToPathValue(height)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Crop image from body Crop image from body
      /// </summary>
      /// <param name="format"></param>
      /// <param name="x"></param>
      /// <param name="y"></param>
      /// <param name="width"></param>
      /// <param name="height"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostCropImage (string format, int? x, int? y, int? width, int? height, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (format == null || x == null || y == null || width == null || height == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (x == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])x=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "x" + "}", apiInvoker.ToPathValue(x)); 
		}
        if (y == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])y=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "y" + "}", apiInvoker.ToPathValue(y)); 
		}
        if (width == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])width=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "width" + "}", apiInvoker.ToPathValue(width)); 
		}
        if (height == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])height=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "height" + "}", apiInvoker.ToPathValue(height)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get separate frame of tiff image Get separate frame of tiff image
      /// </summary>
      /// <param name="name"></param>
      /// <param name="frameId"></param>
      /// <param name="newWidth"></param>
      /// <param name="newHeight"></param>
      /// <param name="x"></param>
      /// <param name="y"></param>
      /// <param name="rectWidth"></param>
      /// <param name="rectHeight"></param>
      /// <param name="rotateFlipMethod"></param>
      /// <param name="saveOtherFrames"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageFrame (string name, int? frameId, int? newWidth, int? newHeight, int? x, int? y, int? rectWidth, int? rectHeight, string rotateFlipMethod, bool? saveOtherFrames, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/frames/{frameId}/?appSid={appSid}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;saveOtherFrames={saveOtherFrames}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || frameId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (frameId == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])frameId=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "frameId" + "}", apiInvoker.ToPathValue(frameId)); 
		}
        if (newWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newWidth" + "}", apiInvoker.ToPathValue(newWidth)); 
		}
        if (newHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newHeight" + "}", apiInvoker.ToPathValue(newHeight)); 
		}
        if (x == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])x=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "x" + "}", apiInvoker.ToPathValue(x)); 
		}
        if (y == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])y=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "y" + "}", apiInvoker.ToPathValue(y)); 
		}
        if (rectWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectWidth" + "}", apiInvoker.ToPathValue(rectWidth)); 
		}
        if (rectHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectHeight" + "}", apiInvoker.ToPathValue(rectHeight)); 
		}
        if (rotateFlipMethod == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rotateFlipMethod=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rotateFlipMethod" + "}", apiInvoker.ToPathValue(rotateFlipMethod)); 
		}
        if (saveOtherFrames == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])saveOtherFrames=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "saveOtherFrames" + "}", apiInvoker.ToPathValue(saveOtherFrames)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get properties of a tiff frame. Get properties of a tiff frame.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="frameId"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ImagingResponse GetImageFrameProperties (string name, int? frameId, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/frames/{frameId}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || frameId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (frameId == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])frameId=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "frameId" + "}", apiInvoker.ToPathValue(frameId)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ImagingResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ImagingResponse) ApiInvoker.deserialize(response, typeof(ImagingResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ImagingResponse) ApiInvoker.deserialize(response, typeof(ImagingResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of bmp image. Update parameters of bmp image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="backgroundColorIndex"></param>
      /// <param name="colorResolution"></param>
      /// <param name="hasTrailer"></param>
      /// <param name="interlaced"></param>
      /// <param name="isPaletteSorted"></param>
      /// <param name="pixelAspectRatio"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageGif (string name, string backgroundColorIndex, string colorResolution, bool? hasTrailer, bool? interlaced, bool? isPaletteSorted, string pixelAspectRatio, bool? fromScratch, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (backgroundColorIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])backgroundColorIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "backgroundColorIndex" + "}", apiInvoker.ToPathValue(backgroundColorIndex)); 
		}
        if (colorResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])colorResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "colorResolution" + "}", apiInvoker.ToPathValue(colorResolution)); 
		}
        if (hasTrailer == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hasTrailer=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hasTrailer" + "}", apiInvoker.ToPathValue(hasTrailer)); 
		}
        if (interlaced == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])interlaced=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "interlaced" + "}", apiInvoker.ToPathValue(interlaced)); 
		}
        if (isPaletteSorted == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isPaletteSorted=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isPaletteSorted" + "}", apiInvoker.ToPathValue(isPaletteSorted)); 
		}
        if (pixelAspectRatio == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pixelAspectRatio=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pixelAspectRatio" + "}", apiInvoker.ToPathValue(pixelAspectRatio)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of gif image. Update parameters of gif image.
      /// </summary>
      /// <param name="backgroundColorIndex"></param>
      /// <param name="colorResolution"></param>
      /// <param name="hasTrailer"></param>
      /// <param name="interlaced"></param>
      /// <param name="isPaletteSorted"></param>
      /// <param name="pixelAspectRatio"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageGif(int? backgroundColorIndex, int? colorResolution, bool? hasTrailer, bool? interlaced, bool? isPaletteSorted, int? pixelAspectRatio, bool? fromScratch, string outPath, byte[] file)
      {
        // create path and map variables
        var ResourcePath = "/imaging/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (backgroundColorIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])backgroundColorIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "backgroundColorIndex" + "}", apiInvoker.ToPathValue(backgroundColorIndex)); 
		}
        if (colorResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])colorResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "colorResolution" + "}", apiInvoker.ToPathValue(colorResolution)); 
		}
        if (hasTrailer == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hasTrailer=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hasTrailer" + "}", apiInvoker.ToPathValue(hasTrailer)); 
		}
        if (interlaced == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])interlaced=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "interlaced" + "}", apiInvoker.ToPathValue(interlaced)); 
		}
        if (isPaletteSorted == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isPaletteSorted=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isPaletteSorted" + "}", apiInvoker.ToPathValue(isPaletteSorted)); 
		}
        if (pixelAspectRatio == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pixelAspectRatio=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pixelAspectRatio" + "}", apiInvoker.ToPathValue(pixelAspectRatio)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of jpg image. Update parameters of jpg image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="quality"></param>
      /// <param name="compressionType"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageJpg (string name, int? quality, string compressionType, bool? fromScratch, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (quality == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])quality=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "quality" + "}", apiInvoker.ToPathValue(quality)); 
		}
        if (compressionType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])compressionType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "compressionType" + "}", apiInvoker.ToPathValue(compressionType)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of jpg image. Update parameters of jpg image.
      /// </summary>
      /// <param name="quality"></param>
      /// <param name="compressionType"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageJpg (int? quality, string compressionType, bool? fromScratch, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (quality == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])quality=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "quality" + "}", apiInvoker.ToPathValue(quality)); 
		}
        if (compressionType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])compressionType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "compressionType" + "}", apiInvoker.ToPathValue(compressionType)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of png image. Update parameters of png image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImagePng (string name, bool? fromScratch, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of png image. Update parameters of png image.
      /// </summary>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImagePng (bool? fromScratch, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get properties of an image. Get properties of an image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ImagingResponse GetImageProperties (string name, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ImagingResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ImagingResponse) ApiInvoker.deserialize(response, typeof(ImagingResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ImagingResponse) ApiInvoker.deserialize(response, typeof(ImagingResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of psd image. Update parameters of psd image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="channelsCount"></param>
      /// <param name="compressionMethod"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImagePsd (string name, int? channelsCount, string compressionMethod, bool? fromScratch, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (channelsCount == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])channelsCount=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "channelsCount" + "}", apiInvoker.ToPathValue(channelsCount)); 
		}
        if (compressionMethod == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])compressionMethod=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "compressionMethod" + "}", apiInvoker.ToPathValue(compressionMethod)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update parameters of psd image. Update parameters of psd image.
      /// </summary>
      /// <param name="channelsCount"></param>
      /// <param name="compressionMethod"></param>
      /// <param name="fromScratch"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImagePsd (int? channelsCount, string compressionMethod, bool? fromScratch, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (channelsCount == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])channelsCount=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "channelsCount" + "}", apiInvoker.ToPathValue(channelsCount)); 
		}
        if (compressionMethod == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])compressionMethod=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "compressionMethod" + "}", apiInvoker.ToPathValue(compressionMethod)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Change scale of an existing image Change scale of an existing image
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="newWidth"></param>
      /// <param name="newHeight"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetChangeImageScale (string name, string format, int? newWidth, int? newHeight, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null || newWidth == null || newHeight == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (newWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newWidth" + "}", apiInvoker.ToPathValue(newWidth)); 
		}
        if (newHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newHeight" + "}", apiInvoker.ToPathValue(newHeight)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Change scale of an image from body Change scale of an image from body
      /// </summary>
      /// <param name="format"></param>
      /// <param name="newWidth"></param>
      /// <param name="newHeight"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostChangeImageScale (string format, int? newWidth, int? newHeight, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (format == null || newWidth == null || newHeight == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (newWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newWidth" + "}", apiInvoker.ToPathValue(newWidth)); 
		}
        if (newHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newHeight" + "}", apiInvoker.ToPathValue(newHeight)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Rotate and flip existing image Rotate and flip existing image
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="method"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageRotateFlip (string name, string format, string method, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null || method == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (method == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])method=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "method" + "}", apiInvoker.ToPathValue(method)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Rotate and flip existing image and get it from response. Rotate and flip existing image and get it from response.
      /// </summary>
      /// <param name="format"></param>
      /// <param name="method"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageRotateFlip (string format, string method, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (format == null || method == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (method == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])method=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "method" + "}", apiInvoker.ToPathValue(method)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Export existing image to another format Export existing image to another format
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetImageSaveAs (string name, string format, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Export existing image to another format. Image is passed as request body. Export existing image to another format. Image is passed as request body.
      /// </summary>
      /// <param name="format"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageSaveAs (string format, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (format == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get tiff image for fax. Get tiff image for fax.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="outPath"></param>
      /// <returns></returns>
      public ResponseMessage GetTiffToFax (string name, string storage, string folder, string outPath) {
        // create path and map variables
        var ResourcePath = "/imaging/tiff/{name}/toFax/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update tiff image. Update tiff image.
      /// </summary>
      /// <param name="compression"></param>
      /// <param name="resolutionUnit"></param>
      /// <param name="bitDepth"></param>
      /// <param name="fromScratch"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostProcessTiff (string compression, string resolutionUnit, int? bitDepth, bool? fromScratch, float? horizontalResolution, float? verticalResolution, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/tiff/?appSid={appSid}&amp;compression={compression}&amp;resolutionUnit={resolutionUnit}&amp;bitDepth={bitDepth}&amp;fromScratch={fromScratch}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (compression == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])compression=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "compression" + "}", apiInvoker.ToPathValue(compression)); 
		}
        if (resolutionUnit == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resolutionUnit=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resolutionUnit" + "}", apiInvoker.ToPathValue(resolutionUnit)); 
		}
        if (bitDepth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])bitDepth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "bitDepth" + "}", apiInvoker.ToPathValue(bitDepth)); 
		}
        if (fromScratch == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fromScratch=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fromScratch" + "}", apiInvoker.ToPathValue(fromScratch)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Append tiff image. Append tiff image.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="appendFile"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostTiffAppend (string name, string appendFile, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/imaging/tiff/{name}/appendTiff/?appSid={appSid}&amp;appendFile={appendFile}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (appendFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])appendFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "appendFile" + "}", apiInvoker.ToPathValue(appendFile)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Perform scaling, cropping and flipping of an image in single request. Perform scaling, cropping and flipping of an image in single request.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="newWidth"></param>
      /// <param name="newHeight"></param>
      /// <param name="x"></param>
      /// <param name="y"></param>
      /// <param name="rectWidth"></param>
      /// <param name="rectHeight"></param>
      /// <param name="rotateFlipMethod"></param>
      /// <param name="outPath"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public ResponseMessage GetUpdatedImage (string name, string format, int? newWidth, int? newHeight, int? x, int? y, int? rectWidth, int? rectHeight, string rotateFlipMethod, string outPath, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/imaging/{name}/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null || newWidth == null || newHeight == null || x == null || y == null || rectWidth == null || rectHeight == null || rotateFlipMethod == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (newWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newWidth" + "}", apiInvoker.ToPathValue(newWidth)); 
		}
        if (newHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newHeight" + "}", apiInvoker.ToPathValue(newHeight)); 
		}
        if (x == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])x=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "x" + "}", apiInvoker.ToPathValue(x)); 
		}
        if (y == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])y=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "y" + "}", apiInvoker.ToPathValue(y)); 
		}
        if (rectWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectWidth" + "}", apiInvoker.ToPathValue(rectWidth)); 
		}
        if (rectHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectHeight" + "}", apiInvoker.ToPathValue(rectHeight)); 
		}
        if (rotateFlipMethod == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rotateFlipMethod=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rotateFlipMethod" + "}", apiInvoker.ToPathValue(rotateFlipMethod)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Perform scaling, cropping and flipping of an image in single request. Image is passed as request body. Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
      /// </summary>
      /// <param name="format"></param>
      /// <param name="newWidth"></param>
      /// <param name="newHeight"></param>
      /// <param name="x"></param>
      /// <param name="y"></param>
      /// <param name="rectWidth"></param>
      /// <param name="rectHeight"></param>
      /// <param name="rotateFlipMethod"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostImageSaveAs(string format, int? newWidth, int? newHeight, int? x, int? y, int? rectWidth, int? rectHeight, string rotateFlipMethod, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/imaging/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (format == null || newWidth == null || newHeight == null || x == null || y == null || rectWidth == null || rectHeight == null || rotateFlipMethod == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (newWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newWidth" + "}", apiInvoker.ToPathValue(newWidth)); 
		}
        if (newHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newHeight" + "}", apiInvoker.ToPathValue(newHeight)); 
		}
        if (x == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])x=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "x" + "}", apiInvoker.ToPathValue(x)); 
		}
        if (y == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])y=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "y" + "}", apiInvoker.ToPathValue(y)); 
		}
        if (rectWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectWidth" + "}", apiInvoker.ToPathValue(rectWidth)); 
		}
        if (rectHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectHeight" + "}", apiInvoker.ToPathValue(rectHeight)); 
		}
        if (rotateFlipMethod == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rotateFlipMethod=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rotateFlipMethod" + "}", apiInvoker.ToPathValue(rotateFlipMethod)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      }
    }
