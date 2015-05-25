package com.aspose.imaging.api;

import com.aspose.imaging.client.ApiException;
import com.aspose.imaging.client.ApiInvoker;
import com.aspose.imaging.client.ApiInvokerResponse;
import com.aspose.imaging.model.ResponseMessage;
import com.aspose.imaging.model.ImagingResponse;
import com.aspose.imaging.model.SaaSposeResponse;
import com.sun.jersey.multipart.FormDataMultiPart;

import javax.ws.rs.core.MediaType;

import java.io.File;
import java.util.*;

public class ImagingApi {
  String basePath = "http://api.aspose.com/v1.1";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();
  ApiInvokerResponse response = null;

  public ImagingApi(String basePath, String apiKey, String appSid) {
    this.basePath = basePath;
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public ImagingApi(String basePath, String apiKey, String appSid, boolean isDebug) {
          this.basePath = basePath;
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
   }
  
  public ImagingApi(String apiKey, String appSid) {
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public ImagingApi(String apiKey, String appSid, boolean isDebug) {
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
   }
  
  public ApiInvoker getInvoker() {
    return apiInvoker;
  }
  
  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }
  
  public String getBasePath() {
    return basePath;
  }

  /**
	* GetImageBmp
	* Update parameters of bmp image.
	* @param name	String	Filename of image.
	* @param bitsPerPixel	Integer	Color depth.
	* @param horizontalResolution	Integer	New horizontal resolution.
	* @param verticalResolution	Integer	New vertical resolution.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageBmp (String name, Integer bitsPerPixel, Integer horizontalResolution, Integer verticalResolution, Boolean fromScratch, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || bitsPerPixel == null || horizontalResolution == null || verticalResolution == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(bitsPerPixel!=null)
	  resourcePath = resourcePath.replace("{" + "bitsPerPixel" + "}" , apiInvoker.toPathValue(bitsPerPixel));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]bitsPerPixel.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageBmp
	* Update parameters of bmp image.
	* @param bitsPerPixel	Integer	Color depth.
	* @param horizontalResolution	Integer	New horizontal resolution.
	* @param verticalResolution	Integer	New vertical resolution.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageBmp (Integer bitsPerPixel, Integer horizontalResolution, Integer verticalResolution, Boolean fromScratch, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(bitsPerPixel == null || horizontalResolution == null || verticalResolution == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(bitsPerPixel!=null)
	  resourcePath = resourcePath.replace("{" + "bitsPerPixel" + "}" , apiInvoker.toPathValue(bitsPerPixel));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]bitsPerPixel.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetCropImage
	* Crop existing image
	* @param name	String	The image name.
	* @param format	String	Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
	* @param x	Integer	X position of start point for cropping rectangle
	* @param y	Integer	Y position of start point for cropping rectangle
	* @param width	Integer	Width of cropping rectangle
	* @param height	Integer	Height of cropping rectangle
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetCropImage (String name, String format, Integer x, Integer y, Integer width, Integer height, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null || x == null || y == null || width == null || height == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(x!=null)
	  resourcePath = resourcePath.replace("{" + "x" + "}" , apiInvoker.toPathValue(x));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]x.*?(?=&|\\?|$)", "");
    if(y!=null)
	  resourcePath = resourcePath.replace("{" + "y" + "}" , apiInvoker.toPathValue(y));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]y.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCropImage
	* Crop image from body
	* @param format	String	Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
	* @param x	Integer	X position of start point for cropping rectangle
	* @param y	Integer	Y position of start point for cropping rectangle
	* @param width	Integer	Width of cropping rectangle
	* @param height	Integer	Height of cropping rectangle
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostCropImage (String format, Integer x, Integer y, Integer width, Integer height, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(format == null || x == null || y == null || width == null || height == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(x!=null)
	  resourcePath = resourcePath.replace("{" + "x" + "}" , apiInvoker.toPathValue(x));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]x.*?(?=&|\\?|$)", "");
    if(y!=null)
	  resourcePath = resourcePath.replace("{" + "y" + "}" , apiInvoker.toPathValue(y));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]y.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageFrame
	* Get separate frame of tiff image
	* @param name	String	Filename of image.
	* @param frameId	Integer	Number of frame.
	* @param newWidth	Integer	New width of the scaled image.
	* @param newHeight	Integer	New height of the scaled image.
	* @param x	Integer	X position of start point for cropping rectangle
	* @param y	Integer	Y position of start point for cropping rectangle
	* @param rectWidth	Integer	Width of cropping rectangle
	* @param rectHeight	Integer	Height of cropping rectangle
	* @param rotateFlipMethod	String	RotateFlip method.(Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY,             Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY,             Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY.             Default is RotateNoneFlipNone.)
	* @param saveOtherFrames	Boolean	Include all other frames or just specified frame in response.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageFrame (String name, Integer frameId, Integer newWidth, Integer newHeight, Integer x, Integer y, Integer rectWidth, Integer rectHeight, String rotateFlipMethod, Boolean saveOtherFrames, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || frameId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/frames/{frameId}/?appSid={appSid}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;saveOtherFrames={saveOtherFrames}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(frameId!=null)
	  resourcePath = resourcePath.replace("{" + "frameId" + "}" , apiInvoker.toPathValue(frameId));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]frameId.*?(?=&|\\?|$)", "");
    if(newWidth!=null)
	  resourcePath = resourcePath.replace("{" + "newWidth" + "}" , apiInvoker.toPathValue(newWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newWidth.*?(?=&|\\?|$)", "");
    if(newHeight!=null)
	  resourcePath = resourcePath.replace("{" + "newHeight" + "}" , apiInvoker.toPathValue(newHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newHeight.*?(?=&|\\?|$)", "");
    if(x!=null)
	  resourcePath = resourcePath.replace("{" + "x" + "}" , apiInvoker.toPathValue(x));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]x.*?(?=&|\\?|$)", "");
    if(y!=null)
	  resourcePath = resourcePath.replace("{" + "y" + "}" , apiInvoker.toPathValue(y));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]y.*?(?=&|\\?|$)", "");
    if(rectWidth!=null)
	  resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , apiInvoker.toPathValue(rectWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectWidth.*?(?=&|\\?|$)", "");
    if(rectHeight!=null)
	  resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , apiInvoker.toPathValue(rectHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectHeight.*?(?=&|\\?|$)", "");
    if(rotateFlipMethod!=null)
	  resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , apiInvoker.toPathValue(rotateFlipMethod));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rotateFlipMethod.*?(?=&|\\?|$)", "");
    if(saveOtherFrames!=null)
	  resourcePath = resourcePath.replace("{" + "saveOtherFrames" + "}" , apiInvoker.toPathValue(saveOtherFrames));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]saveOtherFrames.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageFrameProperties
	* Get properties of a tiff frame.
	* @param name	String	Filename with image.
	* @param frameId	Integer	Number of frame.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ImagingResponse
	*/

  public ImagingResponse GetImageFrameProperties (String name, Integer frameId, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || frameId == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/frames/{frameId}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(frameId!=null)
	  resourcePath = resourcePath.replace("{" + "frameId" + "}" , apiInvoker.toPathValue(frameId));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]frameId.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ImagingResponse) ApiInvoker.deserialize(response, "", ImagingResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageGif
	* Update parameters of bmp image.
	* @param name	String	Filename of image.
	* @param backgroundColorIndex	Integer	Index of the background color.
	* @param colorResolution	Integer	Color resolution.
	* @param hasTrailer	Boolean	Specifies if image has trailer.
	* @param interlaced	Boolean	Specifies if image is interlaced.
	* @param isPaletteSorted	Boolean	Specifies if palette is sorted.
	* @param pixelAspectRatio	Integer	Pixel aspect ratio.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageGif (String name, Integer backgroundColorIndex, Integer colorResolution, Boolean hasTrailer, Boolean interlaced, Boolean isPaletteSorted, Integer pixelAspectRatio, Boolean fromScratch, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(backgroundColorIndex!=null)
	  resourcePath = resourcePath.replace("{" + "backgroundColorIndex" + "}" , apiInvoker.toPathValue(backgroundColorIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]backgroundColorIndex.*?(?=&|\\?|$)", "");
    if(colorResolution!=null)
	  resourcePath = resourcePath.replace("{" + "colorResolution" + "}" , apiInvoker.toPathValue(colorResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]colorResolution.*?(?=&|\\?|$)", "");
    if(hasTrailer!=null)
	  resourcePath = resourcePath.replace("{" + "hasTrailer" + "}" , apiInvoker.toPathValue(hasTrailer));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hasTrailer.*?(?=&|\\?|$)", "");
    if(interlaced!=null)
	  resourcePath = resourcePath.replace("{" + "interlaced" + "}" , apiInvoker.toPathValue(interlaced));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]interlaced.*?(?=&|\\?|$)", "");
    if(isPaletteSorted!=null)
	  resourcePath = resourcePath.replace("{" + "isPaletteSorted" + "}" , apiInvoker.toPathValue(isPaletteSorted));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isPaletteSorted.*?(?=&|\\?|$)", "");
    if(pixelAspectRatio!=null)
	  resourcePath = resourcePath.replace("{" + "pixelAspectRatio" + "}" , apiInvoker.toPathValue(pixelAspectRatio));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pixelAspectRatio.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageBmp_ImagingApi_0
	* Update parameters of gif image.
	* @param backgroundColorIndex	Integer	Index of the background color.
	* @param colorResolution	Integer	Color resolution.
	* @param hasTrailer	Boolean	Specifies if image has trailer.
	* @param interlaced	Boolean	Specifies if image is interlaced.
	* @param isPaletteSorted	Boolean	Specifies if palette is sorted.
	* @param pixelAspectRatio	Integer	Pixel aspect ratio.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageBmp_ImagingApi_0 (Integer backgroundColorIndex, Integer colorResolution, Boolean hasTrailer, Boolean interlaced, Boolean isPaletteSorted, Integer pixelAspectRatio, Boolean fromScratch, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(backgroundColorIndex!=null)
	  resourcePath = resourcePath.replace("{" + "backgroundColorIndex" + "}" , apiInvoker.toPathValue(backgroundColorIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]backgroundColorIndex.*?(?=&|\\?|$)", "");
    if(colorResolution!=null)
	  resourcePath = resourcePath.replace("{" + "colorResolution" + "}" , apiInvoker.toPathValue(colorResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]colorResolution.*?(?=&|\\?|$)", "");
    if(hasTrailer!=null)
	  resourcePath = resourcePath.replace("{" + "hasTrailer" + "}" , apiInvoker.toPathValue(hasTrailer));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hasTrailer.*?(?=&|\\?|$)", "");
    if(interlaced!=null)
	  resourcePath = resourcePath.replace("{" + "interlaced" + "}" , apiInvoker.toPathValue(interlaced));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]interlaced.*?(?=&|\\?|$)", "");
    if(isPaletteSorted!=null)
	  resourcePath = resourcePath.replace("{" + "isPaletteSorted" + "}" , apiInvoker.toPathValue(isPaletteSorted));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isPaletteSorted.*?(?=&|\\?|$)", "");
    if(pixelAspectRatio!=null)
	  resourcePath = resourcePath.replace("{" + "pixelAspectRatio" + "}" , apiInvoker.toPathValue(pixelAspectRatio));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pixelAspectRatio.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageJpg
	* Update parameters of jpg image.
	* @param name	String	Filename of image.
	* @param quality	Integer	Quality of image. From 0 to 100. Default is 75
	* @param compressionType	String	Compression type.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageJpg (String name, Integer quality, String compressionType, Boolean fromScratch, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(quality!=null)
	  resourcePath = resourcePath.replace("{" + "quality" + "}" , apiInvoker.toPathValue(quality));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]quality.*?(?=&|\\?|$)", "");
    if(compressionType!=null)
	  resourcePath = resourcePath.replace("{" + "compressionType" + "}" , apiInvoker.toPathValue(compressionType));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compressionType.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageJpg
	* Update parameters of jpg image.
	* @param quality	Integer	Quality of image. From 0 to 100. Default is 75
	* @param compressionType	String	Compression type.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageJpg (Integer quality, String compressionType, Boolean fromScratch, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(quality!=null)
	  resourcePath = resourcePath.replace("{" + "quality" + "}" , apiInvoker.toPathValue(quality));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]quality.*?(?=&|\\?|$)", "");
    if(compressionType!=null)
	  resourcePath = resourcePath.replace("{" + "compressionType" + "}" , apiInvoker.toPathValue(compressionType));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compressionType.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImagePng
	* Update parameters of png image.
	* @param name	String	Filename of image.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImagePng (String name, Boolean fromScratch, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImagePng
	* Update parameters of png image.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImagePng (Boolean fromScratch, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageProperties
	* Get properties of an image.
	* @param name	String	The image name.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ImagingResponse
	*/

  public ImagingResponse GetImageProperties (String name, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ImagingResponse) ApiInvoker.deserialize(response, "", ImagingResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImagePsd
	* Update parameters of psd image.
	* @param name	String	Filename of image.
	* @param channelsCount	Integer	Count of channels.
	* @param compressionMethod	String	Compression method.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImagePsd (String name, Integer channelsCount, String compressionMethod, Boolean fromScratch, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(channelsCount!=null)
	  resourcePath = resourcePath.replace("{" + "channelsCount" + "}" , apiInvoker.toPathValue(channelsCount));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]channelsCount.*?(?=&|\\?|$)", "");
    if(compressionMethod!=null)
	  resourcePath = resourcePath.replace("{" + "compressionMethod" + "}" , apiInvoker.toPathValue(compressionMethod));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compressionMethod.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImagePsd
	* Update parameters of psd image.
	* @param channelsCount	Integer	Count of channels.
	* @param compressionMethod	String	Compression method.
	* @param fromScratch	Boolean	Specifies where additional parameters we do not support should be taken from. If this is true � they will be taken from default values for standard image, if it is false � they will be saved from current image. Default is false.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImagePsd (Integer channelsCount, String compressionMethod, Boolean fromScratch, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(channelsCount!=null)
	  resourcePath = resourcePath.replace("{" + "channelsCount" + "}" , apiInvoker.toPathValue(channelsCount));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]channelsCount.*?(?=&|\\?|$)", "");
    if(compressionMethod!=null)
	  resourcePath = resourcePath.replace("{" + "compressionMethod" + "}" , apiInvoker.toPathValue(compressionMethod));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compressionMethod.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetChangeImageScale
	* Change scale of an existing image
	* @param name	String	The image name.
	* @param format	String	Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
	* @param newWidth	Integer	New width of the scaled image.
	* @param newHeight	Integer	New height of the scaled image.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetChangeImageScale (String name, String format, Integer newWidth, Integer newHeight, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null || newWidth == null || newHeight == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(newWidth!=null)
	  resourcePath = resourcePath.replace("{" + "newWidth" + "}" , apiInvoker.toPathValue(newWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newWidth.*?(?=&|\\?|$)", "");
    if(newHeight!=null)
	  resourcePath = resourcePath.replace("{" + "newHeight" + "}" , apiInvoker.toPathValue(newHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newHeight.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostChangeImageScale
	* Change scale of an image from body
	* @param format	String	Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
	* @param newWidth	Integer	New width of the scaled image.
	* @param newHeight	Integer	New height of the scaled image.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostChangeImageScale (String format, Integer newWidth, Integer newHeight, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(format == null || newWidth == null || newHeight == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(newWidth!=null)
	  resourcePath = resourcePath.replace("{" + "newWidth" + "}" , apiInvoker.toPathValue(newWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newWidth.*?(?=&|\\?|$)", "");
    if(newHeight!=null)
	  resourcePath = resourcePath.replace("{" + "newHeight" + "}" , apiInvoker.toPathValue(newHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newHeight.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageRotateFlip
	* Rotate and flip existing image
	* @param name	String	Filename of image.
	* @param format	String	Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
	* @param method	String	New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageRotateFlip (String name, String format, String method, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null || method == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(method!=null)
	  resourcePath = resourcePath.replace("{" + "method" + "}" , apiInvoker.toPathValue(method));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]method.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageRotateFlip
	* Rotate and flip existing image and get it from response.
	* @param format	String	Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
	* @param method	String	New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageRotateFlip (String format, String method, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(format == null || method == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(method!=null)
	  resourcePath = resourcePath.replace("{" + "method" + "}" , apiInvoker.toPathValue(method));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]method.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageSaveAs
	* Export existing image to another format
	* @param name	String	Filename of image.
	* @param format	String	Output file format. (Bmp, png, jpg, tiff, psd, gif.)
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageSaveAs (String name, String format, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageSaveAs
	* Export existing image to another format. Image is passed as request body.
	* @param format	String	Output file format. (Bmp, png, jpg, tiff, psd, gif.)
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageSaveAs (String format, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(format == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetTiffToFax
	* Get tiff image for fax.
	* @param name	String	The image file name.
	* @param storage	String	The image file storage.
	* @param folder	String	The image file folder.
	* @param outPath	String	Path to save result
	* @return ResponseMessage
	*/

  public ResponseMessage GetTiffToFax (String name, String storage, String folder, String outPath) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/tiff/{name}/toFax/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostProcessTiff
	* Update tiff image.
	* @param compression	String	New compression.
	* @param resolutionUnit	String	New resolution unit.
	* @param bitDepth	Integer	New bit depth.
	* @param fromScratch	Boolean	
	* @param horizontalResolution	Float	New horizontal resolution.
	* @param verticalResolution	Float	New verstical resolution.
	* @param outPath	String	Path to save result
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostProcessTiff (String compression, String resolutionUnit, Integer bitDepth, Boolean fromScratch, Float horizontalResolution, Float verticalResolution, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/tiff/?appSid={appSid}&amp;compression={compression}&amp;resolutionUnit={resolutionUnit}&amp;bitDepth={bitDepth}&amp;fromScratch={fromScratch}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(compression!=null)
	  resourcePath = resourcePath.replace("{" + "compression" + "}" , apiInvoker.toPathValue(compression));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compression.*?(?=&|\\?|$)", "");
    if(resolutionUnit!=null)
	  resourcePath = resourcePath.replace("{" + "resolutionUnit" + "}" , apiInvoker.toPathValue(resolutionUnit));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]resolutionUnit.*?(?=&|\\?|$)", "");
    if(bitDepth!=null)
	  resourcePath = resourcePath.replace("{" + "bitDepth" + "}" , apiInvoker.toPathValue(bitDepth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]bitDepth.*?(?=&|\\?|$)", "");
    if(fromScratch!=null)
	  resourcePath = resourcePath.replace("{" + "fromScratch" + "}" , apiInvoker.toPathValue(fromScratch));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fromScratch.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostTiffAppend
	* Append tiff image.
	* @param name	String	Original image name.
	* @param appendFile	String	Second image file name.
	* @param storage	String	The images storage.
	* @param folder	String	The images folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostTiffAppend (String name, String appendFile, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/tiff/{name}/appendTiff/?appSid={appSid}&amp;appendFile={appendFile}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(appendFile!=null)
	  resourcePath = resourcePath.replace("{" + "appendFile" + "}" , apiInvoker.toPathValue(appendFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]appendFile.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetUpdatedImage
	* Perform scaling, cropping and flipping of an image in single request.
	* @param name	String	Filename of image.
	* @param format	String	Save image in another format. By default format remains the same
	* @param newWidth	Integer	New Width of the scaled image.
	* @param newHeight	Integer	New height of the scaled image.
	* @param x	Integer	X position of start point for cropping rectangle
	* @param y	Integer	Y position of start point for cropping rectangle
	* @param rectWidth	Integer	Width of cropping rectangle
	* @param rectHeight	Integer	Height of cropping rectangle
	* @param rotateFlipMethod	String	RotateFlip method. Default is RotateNoneFlipNone.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param folder	String	Folder with image to process.
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetUpdatedImage (String name, String format, Integer newWidth, Integer newHeight, Integer x, Integer y, Integer rectWidth, Integer rectHeight, String rotateFlipMethod, String outPath, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null || newWidth == null || newHeight == null || x == null || y == null || rectWidth == null || rectHeight == null || rotateFlipMethod == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/{name}/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(newWidth!=null)
	  resourcePath = resourcePath.replace("{" + "newWidth" + "}" , apiInvoker.toPathValue(newWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newWidth.*?(?=&|\\?|$)", "");
    if(newHeight!=null)
	  resourcePath = resourcePath.replace("{" + "newHeight" + "}" , apiInvoker.toPathValue(newHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newHeight.*?(?=&|\\?|$)", "");
    if(x!=null)
	  resourcePath = resourcePath.replace("{" + "x" + "}" , apiInvoker.toPathValue(x));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]x.*?(?=&|\\?|$)", "");
    if(y!=null)
	  resourcePath = resourcePath.replace("{" + "y" + "}" , apiInvoker.toPathValue(y));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]y.*?(?=&|\\?|$)", "");
    if(rectWidth!=null)
	  resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , apiInvoker.toPathValue(rectWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectWidth.*?(?=&|\\?|$)", "");
    if(rectHeight!=null)
	  resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , apiInvoker.toPathValue(rectHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectHeight.*?(?=&|\\?|$)", "");
    if(rotateFlipMethod!=null)
	  resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , apiInvoker.toPathValue(rotateFlipMethod));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rotateFlipMethod.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImageSaveAs_ImagingApi_0
	* Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
	* @param format	String	Save image in another format. By default format remains the same
	* @param newWidth	Integer	New Width of the scaled image.
	* @param newHeight	Integer	New height of the scaled image.
	* @param x	Integer	X position of start point for cropping rectangle
	* @param y	Integer	Y position of start point for cropping rectangle
	* @param rectWidth	Integer	Width of cropping rectangle
	* @param rectHeight	Integer	Height of cropping rectangle
	* @param rotateFlipMethod	String	RotateFlip method. Default is RotateNoneFlipNone.
	* @param outPath	String	Path to updated file, if this is empty, response contains streamed image.
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostImageSaveAs_ImagingApi_0 (String format, Integer newWidth, Integer newHeight, Integer x, Integer y, Integer rectWidth, Integer rectHeight, String rotateFlipMethod, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(format == null || newWidth == null || newHeight == null || x == null || y == null || rectWidth == null || rectHeight == null || rotateFlipMethod == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/imaging/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(newWidth!=null)
	  resourcePath = resourcePath.replace("{" + "newWidth" + "}" , apiInvoker.toPathValue(newWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newWidth.*?(?=&|\\?|$)", "");
    if(newHeight!=null)
	  resourcePath = resourcePath.replace("{" + "newHeight" + "}" , apiInvoker.toPathValue(newHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newHeight.*?(?=&|\\?|$)", "");
    if(x!=null)
	  resourcePath = resourcePath.replace("{" + "x" + "}" , apiInvoker.toPathValue(x));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]x.*?(?=&|\\?|$)", "");
    if(y!=null)
	  resourcePath = resourcePath.replace("{" + "y" + "}" , apiInvoker.toPathValue(y));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]y.*?(?=&|\\?|$)", "");
    if(rectWidth!=null)
	  resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , apiInvoker.toPathValue(rectWidth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectWidth.*?(?=&|\\?|$)", "");
    if(rectHeight!=null)
	  resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , apiInvoker.toPathValue(rectHeight));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rectHeight.*?(?=&|\\?|$)", "");
    if(rotateFlipMethod!=null)
	  resourcePath = resourcePath.replace("{" + "rotateFlipMethod" + "}" , apiInvoker.toPathValue(rotateFlipMethod));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rotateFlipMethod.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  }