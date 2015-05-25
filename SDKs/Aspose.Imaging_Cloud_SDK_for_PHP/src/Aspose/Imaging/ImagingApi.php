<?php

namespace Aspose\Imaging;

use Aspose\Imaging\ApiException as Exception;
use Aspose\Imaging\ApiClient;

class ImagingApi {

    function __construct() {
        $this->apiClient = new ApiClient();
    }

    /**
     * GetImageBmp
     * Update parameters of bmp image.
     * name, string: Filename of image. (required)

     * bitsPerPixel, int: Color depth. (required)

     * horizontalResolution, int: New horizontal resolution. (required)

     * verticalResolution, int: New vertical resolution. (required)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageBmp($name, $bitsPerPixel, $horizontalResolution, $verticalResolution, $fromScratch = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $bitsPerPixel == '' || $horizontalResolution == '' || $verticalResolution == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($bitsPerPixel != null) {
            $resourcePath = str_replace("{" . "bitsPerPixel" . "}", $this->apiClient->toQueryValue($bitsPerPixel), $resourcePath);
        } else {
            $resourcePath = str_replace("&bitsPerPixel={" . "bitsPerPixel" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageBmp
     * Update parameters of bmp image.
     * bitsPerPixel, int: Color depth. (required)

     * horizontalResolution, int: New horizontal resolution. (required)

     * verticalResolution, int: New vertical resolution. (required)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageBmp($bitsPerPixel, $horizontalResolution, $verticalResolution, $fromScratch = null, $outPath = null, $file) {
        // verify required params are set
        if ($bitsPerPixel == '' || $horizontalResolution == '' || $verticalResolution == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/bmp/?appSid={appSid}&amp;bitsPerPixel={bitsPerPixel}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($bitsPerPixel != null) {
            $resourcePath = str_replace("{" . "bitsPerPixel" . "}", $this->apiClient->toQueryValue($bitsPerPixel), $resourcePath);
        } else {
            $resourcePath = str_replace("&bitsPerPixel={" . "bitsPerPixel" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetCropImage
     * Crop existing image
     * name, string: The image name. (required)

     * format, string: Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required)

     * x, int: X position of start point for cropping rectangle (required)

     * y, int: Y position of start point for cropping rectangle (required)

     * width, int: Width of cropping rectangle (required)

     * height, int: Height of cropping rectangle (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetCropImage($name, $format, $x, $y, $width, $height, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $format == '' || $x == '' || $y == '' || $width == '' || $height == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($x != null) {
            $resourcePath = str_replace("{" . "x" . "}", $this->apiClient->toQueryValue($x), $resourcePath);
        } else {
            $resourcePath = str_replace("&x={" . "x" . "}", "", $resourcePath);
        }
        if ($y != null) {
            $resourcePath = str_replace("{" . "y" . "}", $this->apiClient->toQueryValue($y), $resourcePath);
        } else {
            $resourcePath = str_replace("&y={" . "y" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostCropImage
     * Crop image from body
     * format, string: Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required)

     * x, int: X position of start point for cropping rectangle (required)

     * y, int: Y position of start point for cropping rectangle (required)

     * width, int: Width of cropping rectangle (required)

     * height, int: Height of cropping rectangle (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostCropImage($format, $x, $y, $width, $height, $outPath = null, $file) {
        // verify required params are set
        if ($format == '' || $x == '' || $y == '' || $width == '' || $height == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/crop/?appSid={appSid}&amp;toFormat={toFormat}&amp;x={x}&amp;y={y}&amp;width={width}&amp;height={height}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($x != null) {
            $resourcePath = str_replace("{" . "x" . "}", $this->apiClient->toQueryValue($x), $resourcePath);
        } else {
            $resourcePath = str_replace("&x={" . "x" . "}", "", $resourcePath);
        }
        if ($y != null) {
            $resourcePath = str_replace("{" . "y" . "}", $this->apiClient->toQueryValue($y), $resourcePath);
        } else {
            $resourcePath = str_replace("&y={" . "y" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageFrame
     * Get separate frame of tiff image
     * name, string: Filename of image. (required)

     * frameId, int: Number of frame. (required)

     * newWidth, int: New width of the scaled image. (optional)

     * newHeight, int: New height of the scaled image. (optional)

     * x, int: X position of start point for cropping rectangle (optional)

     * y, int: Y position of start point for cropping rectangle (optional)

     * rectWidth, int: Width of cropping rectangle (optional)

     * rectHeight, int: Height of cropping rectangle (optional)

     * rotateFlipMethod, string: RotateFlip method.(Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY,             Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY,             Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY.             Default is RotateNoneFlipNone.) (optional)

     * saveOtherFrames, bool: Include all other frames or just specified frame in response. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageFrame($name, $frameId, $newWidth = null, $newHeight = null, $x = null, $y = null, $rectWidth = null, $rectHeight = null, $rotateFlipMethod = null, $saveOtherFrames = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $frameId == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/frames/{frameId}/?appSid={appSid}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;saveOtherFrames={saveOtherFrames}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($frameId != null) {
            $resourcePath = str_replace("{" . "frameId" . "}", $this->apiClient->toQueryValue($frameId), $resourcePath);
        } else {
            $resourcePath = str_replace("&frameId={" . "frameId" . "}", "", $resourcePath);
        }
        if ($newWidth != null) {
            $resourcePath = str_replace("{" . "newWidth" . "}", $this->apiClient->toQueryValue($newWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&newWidth={" . "newWidth" . "}", "", $resourcePath);
        }
        if ($newHeight != null) {
            $resourcePath = str_replace("{" . "newHeight" . "}", $this->apiClient->toQueryValue($newHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&newHeight={" . "newHeight" . "}", "", $resourcePath);
        }
        if ($x != null) {
            $resourcePath = str_replace("{" . "x" . "}", $this->apiClient->toQueryValue($x), $resourcePath);
        } else {
            $resourcePath = str_replace("&x={" . "x" . "}", "", $resourcePath);
        }
        if ($y != null) {
            $resourcePath = str_replace("{" . "y" . "}", $this->apiClient->toQueryValue($y), $resourcePath);
        } else {
            $resourcePath = str_replace("&y={" . "y" . "}", "", $resourcePath);
        }
        if ($rectWidth != null) {
            $resourcePath = str_replace("{" . "rectWidth" . "}", $this->apiClient->toQueryValue($rectWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectWidth={" . "rectWidth" . "}", "", $resourcePath);
        }
        if ($rectHeight != null) {
            $resourcePath = str_replace("{" . "rectHeight" . "}", $this->apiClient->toQueryValue($rectHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectHeight={" . "rectHeight" . "}", "", $resourcePath);
        }
        if ($rotateFlipMethod != null) {
            $resourcePath = str_replace("{" . "rotateFlipMethod" . "}", $this->apiClient->toQueryValue($rotateFlipMethod), $resourcePath);
        } else {
            $resourcePath = str_replace("&rotateFlipMethod={" . "rotateFlipMethod" . "}", "", $resourcePath);
        }
        if ($saveOtherFrames != null) {
            $resourcePath = str_replace("{" . "saveOtherFrames" . "}", $this->apiClient->toQueryValue($saveOtherFrames), $resourcePath);
        } else {
            $resourcePath = str_replace("&saveOtherFrames={" . "saveOtherFrames" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageFrameProperties
     * Get properties of a tiff frame.
     * name, string: Filename with image. (required)

     * frameId, int: Number of frame. (required)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ImagingResponse
     */
    public function GetImageFrameProperties($name, $frameId, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $frameId == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/frames/{frameId}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($frameId != null) {
            $resourcePath = str_replace("{" . "frameId" . "}", $this->apiClient->toQueryValue($frameId), $resourcePath);
        } else {
            $resourcePath = str_replace("&frameId={" . "frameId" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ImagingResponse');
        return $responseObject;
    }

    /**
     * GetImageGif
     * Update parameters of bmp image.
     * name, string: Filename of image. (required)

     * backgroundColorIndex, integer: Index of the background color. (optional)

     * colorResolution, integer: Color resolution. (optional)

     * hasTrailer, bool: Specifies if image has trailer. (optional)

     * interlaced, bool: Specifies if image is interlaced. (optional)

     * isPaletteSorted, bool: Specifies if palette is sorted. (optional)

     * pixelAspectRatio, integer: Pixel aspect ratio. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageGif($name, $backgroundColorIndex = null, $colorResolution = null, $hasTrailer = null, $interlaced = null, $isPaletteSorted = null, $pixelAspectRatio = null, $fromScratch = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($backgroundColorIndex != null) {
            $resourcePath = str_replace("{" . "backgroundColorIndex" . "}", $this->apiClient->toQueryValue($backgroundColorIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&backgroundColorIndex={" . "backgroundColorIndex" . "}", "", $resourcePath);
        }
        if ($colorResolution != null) {
            $resourcePath = str_replace("{" . "colorResolution" . "}", $this->apiClient->toQueryValue($colorResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&colorResolution={" . "colorResolution" . "}", "", $resourcePath);
        }
        if ($hasTrailer != null) {
            $resourcePath = str_replace("{" . "hasTrailer" . "}", $this->apiClient->toQueryValue($hasTrailer), $resourcePath);
        } else {
            $resourcePath = str_replace("&hasTrailer={" . "hasTrailer" . "}", "", $resourcePath);
        }
        if ($interlaced != null) {
            $resourcePath = str_replace("{" . "interlaced" . "}", $this->apiClient->toQueryValue($interlaced), $resourcePath);
        } else {
            $resourcePath = str_replace("&interlaced={" . "interlaced" . "}", "", $resourcePath);
        }
        if ($isPaletteSorted != null) {
            $resourcePath = str_replace("{" . "isPaletteSorted" . "}", $this->apiClient->toQueryValue($isPaletteSorted), $resourcePath);
        } else {
            $resourcePath = str_replace("&isPaletteSorted={" . "isPaletteSorted" . "}", "", $resourcePath);
        }
        if ($pixelAspectRatio != null) {
            $resourcePath = str_replace("{" . "pixelAspectRatio" . "}", $this->apiClient->toQueryValue($pixelAspectRatio), $resourcePath);
        } else {
            $resourcePath = str_replace("&pixelAspectRatio={" . "pixelAspectRatio" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageBmp_ImagingApi_0
     * Update parameters of gif image.
     * backgroundColorIndex, integer: Index of the background color. (optional)

     * colorResolution, integer: Color resolution. (optional)

     * hasTrailer, bool: Specifies if image has trailer. (optional)

     * interlaced, bool: Specifies if image is interlaced. (optional)

     * isPaletteSorted, bool: Specifies if palette is sorted. (optional)

     * pixelAspectRatio, integer: Pixel aspect ratio. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageBmp_ImagingApi_0($backgroundColorIndex = null, $colorResolution = null, $hasTrailer = null, $interlaced = null, $isPaletteSorted = null, $pixelAspectRatio = null, $fromScratch = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/gif/?appSid={appSid}&amp;backgroundColorIndex={backgroundColorIndex}&amp;colorResolution={colorResolution}&amp;hasTrailer={hasTrailer}&amp;interlaced={interlaced}&amp;isPaletteSorted={isPaletteSorted}&amp;pixelAspectRatio={pixelAspectRatio}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($backgroundColorIndex != null) {
            $resourcePath = str_replace("{" . "backgroundColorIndex" . "}", $this->apiClient->toQueryValue($backgroundColorIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&backgroundColorIndex={" . "backgroundColorIndex" . "}", "", $resourcePath);
        }
        if ($colorResolution != null) {
            $resourcePath = str_replace("{" . "colorResolution" . "}", $this->apiClient->toQueryValue($colorResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&colorResolution={" . "colorResolution" . "}", "", $resourcePath);
        }
        if ($hasTrailer != null) {
            $resourcePath = str_replace("{" . "hasTrailer" . "}", $this->apiClient->toQueryValue($hasTrailer), $resourcePath);
        } else {
            $resourcePath = str_replace("&hasTrailer={" . "hasTrailer" . "}", "", $resourcePath);
        }
        if ($interlaced != null) {
            $resourcePath = str_replace("{" . "interlaced" . "}", $this->apiClient->toQueryValue($interlaced), $resourcePath);
        } else {
            $resourcePath = str_replace("&interlaced={" . "interlaced" . "}", "", $resourcePath);
        }
        if ($isPaletteSorted != null) {
            $resourcePath = str_replace("{" . "isPaletteSorted" . "}", $this->apiClient->toQueryValue($isPaletteSorted), $resourcePath);
        } else {
            $resourcePath = str_replace("&isPaletteSorted={" . "isPaletteSorted" . "}", "", $resourcePath);
        }
        if ($pixelAspectRatio != null) {
            $resourcePath = str_replace("{" . "pixelAspectRatio" . "}", $this->apiClient->toQueryValue($pixelAspectRatio), $resourcePath);
        } else {
            $resourcePath = str_replace("&pixelAspectRatio={" . "pixelAspectRatio" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageJpg
     * Update parameters of jpg image.
     * name, string: Filename of image. (required)

     * quality, int: Quality of image. From 0 to 100. Default is 75 (optional)

     * compressionType, string: Compression type. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageJpg($name, $quality = null, $compressionType = null, $fromScratch = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($quality != null) {
            $resourcePath = str_replace("{" . "quality" . "}", $this->apiClient->toQueryValue($quality), $resourcePath);
        } else {
            $resourcePath = str_replace("&quality={" . "quality" . "}", "", $resourcePath);
        }
        if ($compressionType != null) {
            $resourcePath = str_replace("{" . "compressionType" . "}", $this->apiClient->toQueryValue($compressionType), $resourcePath);
        } else {
            $resourcePath = str_replace("&compressionType={" . "compressionType" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageJpg
     * Update parameters of jpg image.
     * quality, int: Quality of image. From 0 to 100. Default is 75 (optional)

     * compressionType, string: Compression type. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageJpg($quality = null, $compressionType = null, $fromScratch = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/jpg/?appSid={appSid}&amp;quality={quality}&amp;compressionType={compressionType}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($quality != null) {
            $resourcePath = str_replace("{" . "quality" . "}", $this->apiClient->toQueryValue($quality), $resourcePath);
        } else {
            $resourcePath = str_replace("&quality={" . "quality" . "}", "", $resourcePath);
        }
        if ($compressionType != null) {
            $resourcePath = str_replace("{" . "compressionType" . "}", $this->apiClient->toQueryValue($compressionType), $resourcePath);
        } else {
            $resourcePath = str_replace("&compressionType={" . "compressionType" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImagePng
     * Update parameters of png image.
     * name, string: Filename of image. (required)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImagePng($name, $fromScratch = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImagePng
     * Update parameters of png image.
     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImagePng($fromScratch = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/png/?appSid={appSid}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageProperties
     * Get properties of an image.
     * name, string: The image name. (required)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ImagingResponse
     */
    public function GetImageProperties($name, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/properties/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ImagingResponse');
        return $responseObject;
    }

    /**
     * GetImagePsd
     * Update parameters of psd image.
     * name, string: Filename of image. (required)

     * channelsCount, integer: Count of channels. (optional)

     * compressionMethod, string: Compression method. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImagePsd($name, $channelsCount = null, $compressionMethod = null, $fromScratch = null, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($channelsCount != null) {
            $resourcePath = str_replace("{" . "channelsCount" . "}", $this->apiClient->toQueryValue($channelsCount), $resourcePath);
        } else {
            $resourcePath = str_replace("&channelsCount={" . "channelsCount" . "}", "", $resourcePath);
        }
        if ($compressionMethod != null) {
            $resourcePath = str_replace("{" . "compressionMethod" . "}", $this->apiClient->toQueryValue($compressionMethod), $resourcePath);
        } else {
            $resourcePath = str_replace("&compressionMethod={" . "compressionMethod" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImagePsd
     * Update parameters of psd image.
     * channelsCount, integer: Count of channels. (optional)

     * compressionMethod, string: Compression method. (optional)

     * fromScratch, bool: Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. (optional)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImagePsd($channelsCount = null, $compressionMethod = null, $fromScratch = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/psd/?appSid={appSid}&amp;channelsCount={channelsCount}&amp;compressionMethod={compressionMethod}&amp;fromScratch={fromScratch}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($channelsCount != null) {
            $resourcePath = str_replace("{" . "channelsCount" . "}", $this->apiClient->toQueryValue($channelsCount), $resourcePath);
        } else {
            $resourcePath = str_replace("&channelsCount={" . "channelsCount" . "}", "", $resourcePath);
        }
        if ($compressionMethod != null) {
            $resourcePath = str_replace("{" . "compressionMethod" . "}", $this->apiClient->toQueryValue($compressionMethod), $resourcePath);
        } else {
            $resourcePath = str_replace("&compressionMethod={" . "compressionMethod" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetChangeImageScale
     * Change scale of an existing image
     * name, string: The image name. (required)

     * format, string: Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required)

     * newWidth, int: New width of the scaled image. (required)

     * newHeight, int: New height of the scaled image. (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetChangeImageScale($name, $format, $newWidth, $newHeight, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $format == '' || $newWidth == '' || $newHeight == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($newWidth != null) {
            $resourcePath = str_replace("{" . "newWidth" . "}", $this->apiClient->toQueryValue($newWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&newWidth={" . "newWidth" . "}", "", $resourcePath);
        }
        if ($newHeight != null) {
            $resourcePath = str_replace("{" . "newHeight" . "}", $this->apiClient->toQueryValue($newHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&newHeight={" . "newHeight" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostChangeImageScale
     * Change scale of an image from body
     * format, string: Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif. (required)

     * newWidth, int: New width of the scaled image. (required)

     * newHeight, int: New height of the scaled image. (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostChangeImageScale($format, $newWidth, $newHeight, $outPath = null, $file) {
        // verify required params are set
        if ($format == '' || $newWidth == '' || $newHeight == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/resize/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($newWidth != null) {
            $resourcePath = str_replace("{" . "newWidth" . "}", $this->apiClient->toQueryValue($newWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&newWidth={" . "newWidth" . "}", "", $resourcePath);
        }
        if ($newHeight != null) {
            $resourcePath = str_replace("{" . "newHeight" . "}", $this->apiClient->toQueryValue($newHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&newHeight={" . "newHeight" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageRotateFlip
     * Rotate and flip existing image
     * name, string: Filename of image. (required)

     * format, string: Number of frame. (Bmp, png, jpg, tiff, psd, gif.) (required)

     * method, string: New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY) (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageRotateFlip($name, $format, $method, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $format == '' || $method == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($method != null) {
            $resourcePath = str_replace("{" . "method" . "}", $this->apiClient->toQueryValue($method), $resourcePath);
        } else {
            $resourcePath = str_replace("&method={" . "method" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageRotateFlip
     * Rotate and flip existing image and get it from response.
     * format, string: Number of frame. (Bmp, png, jpg, tiff, psd, gif.) (required)

     * method, string: New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY) (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageRotateFlip($format, $method, $outPath = null, $file) {
        // verify required params are set
        if ($format == '' || $method == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/rotateflip/?toFormat={toFormat}&amp;appSid={appSid}&amp;method={method}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($method != null) {
            $resourcePath = str_replace("{" . "method" . "}", $this->apiClient->toQueryValue($method), $resourcePath);
        } else {
            $resourcePath = str_replace("&method={" . "method" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImageSaveAs
     * Export existing image to another format
     * name, string: Filename of image. (required)

     * format, string: Output file format. (Bmp, png, jpg, tiff, psd, gif.) (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetImageSaveAs($name, $format, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageSaveAs
     * Export existing image to another format. Image is passed as request body.
     * format, string: Output file format. (Bmp, png, jpg, tiff, psd, gif.) (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageSaveAs($format, $outPath = null, $file) {
        // verify required params are set
        if ($format == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/saveAs/?appSid={appSid}&amp;toFormat={toFormat}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetTiffToFax
     * Get tiff image for fax.
     * name, string: The image file name. (required)

     * storage, string: The image file storage. (optional)

     * folder, string: The image file folder. (optional)

     * outPath, string: Path to save result (optional)

     * @return ResponseMessage
     */
    public function GetTiffToFax($name, $storage = null, $folder = null, $outPath = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/tiff/{name}/toFax/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostProcessTiff
     * Update tiff image.
     * compression, string: New compression. (optional)

     * resolutionUnit, string: New resolution unit. (optional)

     * bitDepth, int: New bit depth. (optional)

     * fromScratch, bool:  (optional)

     * horizontalResolution, float: New horizontal resolution. (optional)

     * verticalResolution, float: New verstical resolution. (optional)

     * outPath, string: Path to save result (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostProcessTiff($compression = null, $resolutionUnit = null, $bitDepth = null, $fromScratch = null, $horizontalResolution = null, $verticalResolution = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/tiff/?appSid={appSid}&amp;compression={compression}&amp;resolutionUnit={resolutionUnit}&amp;bitDepth={bitDepth}&amp;fromScratch={fromScratch}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($compression != null) {
            $resourcePath = str_replace("{" . "compression" . "}", $this->apiClient->toQueryValue($compression), $resourcePath);
        } else {
            $resourcePath = str_replace("&compression={" . "compression" . "}", "", $resourcePath);
        }
        if ($resolutionUnit != null) {
            $resourcePath = str_replace("{" . "resolutionUnit" . "}", $this->apiClient->toQueryValue($resolutionUnit), $resourcePath);
        } else {
            $resourcePath = str_replace("&resolutionUnit={" . "resolutionUnit" . "}", "", $resourcePath);
        }
        if ($bitDepth != null) {
            $resourcePath = str_replace("{" . "bitDepth" . "}", $this->apiClient->toQueryValue($bitDepth), $resourcePath);
        } else {
            $resourcePath = str_replace("&bitDepth={" . "bitDepth" . "}", "", $resourcePath);
        }
        if ($fromScratch != null) {
            $resourcePath = str_replace("{" . "fromScratch" . "}", $this->apiClient->toQueryValue($fromScratch), $resourcePath);
        } else {
            $resourcePath = str_replace("&fromScratch={" . "fromScratch" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostTiffAppend
     * Append tiff image.
     * name, string: Original image name. (required)

     * appendFile, string: Second image file name. (optional)

     * storage, string: The images storage. (optional)

     * folder, string: The images folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostTiffAppend($name, $appendFile = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/tiff/{name}/appendTiff/?appSid={appSid}&amp;appendFile={appendFile}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($appendFile != null) {
            $resourcePath = str_replace("{" . "appendFile" . "}", $this->apiClient->toQueryValue($appendFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&appendFile={" . "appendFile" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetUpdatedImage
     * Perform scaling, cropping and flipping of an image in single request.
     * name, string: Filename of image. (required)

     * format, string: Save image in another format. By default format remains the same (required)

     * newWidth, int: New Width of the scaled image. (required)

     * newHeight, int: New height of the scaled image. (required)

     * x, int: X position of start point for cropping rectangle (required)

     * y, int: Y position of start point for cropping rectangle (required)

     * rectWidth, int: Width of cropping rectangle (required)

     * rectHeight, int: Height of cropping rectangle (required)

     * rotateFlipMethod, string: RotateFlip method. Default is RotateNoneFlipNone. (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * folder, string: Folder with image to process. (optional)

     * storage, string:  (optional)

     * @return ResponseMessage
     */
    public function GetUpdatedImage($name, $format, $newWidth, $newHeight, $x, $y, $rectWidth, $rectHeight, $rotateFlipMethod, $outPath = null, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $format == '' || $newWidth == '' || $newHeight == '' || $x == '' || $y == '' || $rectWidth == '' || $rectHeight == '' || $rotateFlipMethod == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/{name}/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($newWidth != null) {
            $resourcePath = str_replace("{" . "newWidth" . "}", $this->apiClient->toQueryValue($newWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&newWidth={" . "newWidth" . "}", "", $resourcePath);
        }
        if ($newHeight != null) {
            $resourcePath = str_replace("{" . "newHeight" . "}", $this->apiClient->toQueryValue($newHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&newHeight={" . "newHeight" . "}", "", $resourcePath);
        }
        if ($x != null) {
            $resourcePath = str_replace("{" . "x" . "}", $this->apiClient->toQueryValue($x), $resourcePath);
        } else {
            $resourcePath = str_replace("&x={" . "x" . "}", "", $resourcePath);
        }
        if ($y != null) {
            $resourcePath = str_replace("{" . "y" . "}", $this->apiClient->toQueryValue($y), $resourcePath);
        } else {
            $resourcePath = str_replace("&y={" . "y" . "}", "", $resourcePath);
        }
        if ($rectWidth != null) {
            $resourcePath = str_replace("{" . "rectWidth" . "}", $this->apiClient->toQueryValue($rectWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectWidth={" . "rectWidth" . "}", "", $resourcePath);
        }
        if ($rectHeight != null) {
            $resourcePath = str_replace("{" . "rectHeight" . "}", $this->apiClient->toQueryValue($rectHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectHeight={" . "rectHeight" . "}", "", $resourcePath);
        }
        if ($rotateFlipMethod != null) {
            $resourcePath = str_replace("{" . "rotateFlipMethod" . "}", $this->apiClient->toQueryValue($rotateFlipMethod), $resourcePath);
        } else {
            $resourcePath = str_replace("&rotateFlipMethod={" . "rotateFlipMethod" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostImageSaveAs_ImagingApi_0
     * Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
     * format, string: Save image in another format. By default format remains the same (required)

     * newWidth, int: New Width of the scaled image. (required)

     * newHeight, int: New height of the scaled image. (required)

     * x, int: X position of start point for cropping rectangle (required)

     * y, int: Y position of start point for cropping rectangle (required)

     * rectWidth, int: Width of cropping rectangle (required)

     * rectHeight, int: Height of cropping rectangle (required)

     * rotateFlipMethod, string: RotateFlip method. Default is RotateNoneFlipNone. (required)

     * outPath, string: Path to updated file, if this is empty, response contains streamed image. (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostImageSaveAs_ImagingApi_0($format, $newWidth, $newHeight, $x, $y, $rectWidth, $rectHeight, $rotateFlipMethod, $outPath = null, $file) {
        // verify required params are set
        if ($format == '' || $newWidth == '' || $newHeight == '' || $x == '' || $y == '' || $rectWidth == '' || $rectHeight == '' || $rotateFlipMethod == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/imaging/updateImage/?appSid={appSid}&amp;toFormat={toFormat}&amp;newWidth={newWidth}&amp;newHeight={newHeight}&amp;x={x}&amp;y={y}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;rotateFlipMethod={rotateFlipMethod}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($newWidth != null) {
            $resourcePath = str_replace("{" . "newWidth" . "}", $this->apiClient->toQueryValue($newWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&newWidth={" . "newWidth" . "}", "", $resourcePath);
        }
        if ($newHeight != null) {
            $resourcePath = str_replace("{" . "newHeight" . "}", $this->apiClient->toQueryValue($newHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&newHeight={" . "newHeight" . "}", "", $resourcePath);
        }
        if ($x != null) {
            $resourcePath = str_replace("{" . "x" . "}", $this->apiClient->toQueryValue($x), $resourcePath);
        } else {
            $resourcePath = str_replace("&x={" . "x" . "}", "", $resourcePath);
        }
        if ($y != null) {
            $resourcePath = str_replace("{" . "y" . "}", $this->apiClient->toQueryValue($y), $resourcePath);
        } else {
            $resourcePath = str_replace("&y={" . "y" . "}", "", $resourcePath);
        }
        if ($rectWidth != null) {
            $resourcePath = str_replace("{" . "rectWidth" . "}", $this->apiClient->toQueryValue($rectWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectWidth={" . "rectWidth" . "}", "", $resourcePath);
        }
        if ($rectHeight != null) {
            $resourcePath = str_replace("{" . "rectHeight" . "}", $this->apiClient->toQueryValue($rectHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectHeight={" . "rectHeight" . "}", "", $resourcePath);
        }
        if ($rotateFlipMethod != null) {
            $resourcePath = str_replace("{" . "rotateFlipMethod" . "}", $this->apiClient->toQueryValue($rotateFlipMethod), $resourcePath);
        } else {
            $resourcePath = str_replace("&rotateFlipMethod={" . "rotateFlipMethod" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

}
