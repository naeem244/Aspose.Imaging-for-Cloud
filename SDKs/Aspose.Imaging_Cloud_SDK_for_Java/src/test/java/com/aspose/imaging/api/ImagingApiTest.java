/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aspose.imaging.api;


import com.aspose.imaging.client.ApiException;
import com.aspose.imaging.model.ImagingResponse;
import com.aspose.imaging.model.ResponseMessage;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 *
 * @author Imran Answar
 */
public class ImagingApiTest {

	ImagingApi imaging;
	
	String appSID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
        String apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

		
	public ImagingApiTest() {
	}

	@BeforeClass
	public static void setUpClass() {
	}

	@AfterClass
	public static void tearDownClass() {
	}

	@Before
	public void setUp() {
		imaging = new ImagingApi("http://api.aspose.com/v1.1",apiKey,appSID);
		imaging.setBasePath("http://api.aspose.com/v1.1");
		
	}

	@After
	public void tearDown() {
	}

	/**
	 * Test of GetImageBmp method, of class ImagingApi.
	 */
	@Test
	public void testGetImageBmp() {
		System.out.println("GetImageBmp");
		String name = "Sampleocr.bmp";
		Integer bitsPerPixel = 8;
		Integer horizontalResolution = 32;
		Integer verticalResolution = 32;
		Boolean fromScratch = false;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageBmp(name, bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageBmp method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageBmp() {
//		System.out.println("PostImageBmp");
//		Integer bitsPerPixel = null;
//		Integer horizontalResolution = null;
//		Integer verticalResolution = null;
//		Boolean fromScratch = null;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageBmp(bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetCropImage method, of class ImagingApi.
	 */
	@Test
	public void testGetCropImage() {
		System.out.println("GetCropImage");
		String name = "Sampleocr.bmp";
		String format = "bmp";
		Integer x = 0;
		Integer y = 0;
		Integer width = 200;
		Integer height = 200;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetCropImage(name, format, x, y, width, height, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostCropImage method, of class ImagingApi.
	 */
//	@Test
//	public void testPostCropImage() {
//		System.out.println("PostCropImage");
//		String format = "jpg";
//		Integer x = 0;
//		Integer y = 0;
//		Integer width = 300;
//		Integer height = 300;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostCropImage(format, x, y, width, height, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetImageFrame method, of class ImagingApi.
	 */
	@Test
	public void testGetImageFrame() {
		System.out.println("GetImageFrame");
		String name = "sample.tiff";
		Integer frameId = 0;
		Integer newWidth = 200;
		Integer newHeight = 200;
		Integer x = 0;
		Integer y = 0;
		Integer rectWidth = 100;
		Integer rectHeight = 100;
		String rotateFlipMethod = "Rotate180FlipX";
		Boolean saveOtherFrames = true;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageFrame(name, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetImageFrameProperties method, of class ImagingApi.
	 */
	@Test
	public void testGetImageFrameProperties() {
		System.out.println("GetImageFrameProperties");
		String name = "sample.tiff";
		Integer frameId = 0;
		String folder = "";
		String storage = "";

		ImagingResponse expResult = new ImagingResponse();
		expResult.setStatus("OK");
		try {
			ImagingResponse result = imaging.GetImageFrameProperties(name, frameId, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetImageGif method, of class ImagingApi.
	 */
	@Test
	public void testGetImageGif() {
		System.out.println("GetImageGif");
		String name = "digi.gif";
		Integer backgroundColorIndex = null;
		Integer colorResolution = null;
		Boolean hasTrailer = true;
		Boolean interlaced = true;
		Boolean isPaletteSorted = true;
		Integer pixelAspectRatio = null;
		Boolean fromScratch = true;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageGif(name, backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageBmp_ImagingApi_0 method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageBmp_ImagingApi_0() {
//		System.out.println("PostImageBmp_ImagingApi_0");
//		String backgroundColorIndex = "";
//		String colorResolution = "";
//		Boolean hasTrailer = false;
//		Boolean interlaced = false;
//		Boolean isPaletteSorted = false;
//		String pixelAspectRatio = "";
//		Boolean fromScratch = false;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageBmp_ImagingApi_0(backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetImageJpg method, of class ImagingApi.
	 */
	@Test
	public void testGetImageJpg() {
		System.out.println("GetImageJpg");
		String name = "test123.jpg";
		Integer quality = 50;
		String compressionType = "";
		Boolean fromScratch = false;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageJpg(name, quality, compressionType, fromScratch, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageJpg method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageJpg() {
//		System.out.println("PostImageJpg");
//		Integer quality = 0;
//		String compressionType = "";
//		Boolean fromScratch = false;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageJpg(quality, compressionType, fromScratch, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetImagePng method, of class ImagingApi.
	 */
	@Test
	public void testGetImagePng() {
		System.out.println("GetImagePng");
		String name = "barcode1.png";
		Boolean fromScratch = true;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImagePng(name, fromScratch, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImagePng method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImagePng() {
//		System.out.println("PostImagePng");
//		Boolean fromScratch = null;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImagePng(fromScratch, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetImageProperties method, of class ImagingApi.
	 */
	@Test
	public void testGetImageProperties() {
		System.out.println("GetImageProperties");
		String name = "sample.tiff";
		String folder = "";
		String storage = "";

		ImagingResponse expResult = new ImagingResponse();
		expResult.setStatus("OK");
		try {
			ImagingResponse result = imaging.GetImageProperties(name, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetImagePsd method, of class ImagingApi.
	 */
	@Test
	public void testGetImagePsd() {
		System.out.println("GetImagePsd");
		String name = "test.psd";
		Integer channelsCount = 1;
		String compressionMethod = "raw";
		Boolean fromScratch = false;
		String outPath = "updatedImage.psd";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImagePsd(name, channelsCount, compressionMethod, fromScratch, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImagePsd method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImagePsd() {
//		System.out.println("PostImagePsd");
//		Integer channelsCount = null;
//		String compressionMethod = "";
//		Boolean fromScratch = null;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImagePsd(channelsCount, compressionMethod, fromScratch, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetChangeImageScale method, of class ImagingApi.
	 */
	@Test
	public void testGetChangeImageScale() {
		System.out.println("GetChangeImageScale");
		String name = "sample.tiff";
		String format = "gif";
		Integer newWidth = 200;
		Integer newHeight = 200;
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetChangeImageScale(name, format, newWidth, newHeight, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostChangeImageScale method, of class ImagingApi.
	 */
//	@Test
//	public void testPostChangeImageScale() {
//		System.out.println("PostChangeImageScale");
//		String format = "";
//		Integer newWidth = null;
//		Integer newHeight = null;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostChangeImageScale(format, newWidth, newHeight, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetImageRotateFlip method, of class ImagingApi.
	 */
	@Test
	public void testGetImageRotateFlip() {
		System.out.println("GetImageRotateFlip");
		String name = "sample.tiff";
		String format = "jpg";
		String method = "Rotate180FlipX";
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageRotateFlip(name, format, method, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageRotateFlip method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageRotateFlip() {
//		System.out.println("PostImageRotateFlip");
//		String format = "";
//		String method = "";
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageRotateFlip(format, method, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}
//
	/**
	 * Test of GetImageSaveAs method, of class ImagingApi.
	 */
	@Test
	public void testGetImageSaveAs() {
		System.out.println("GetImageSaveAs");
		String name = "Sampleocr.bmp";
		String format = "tiff";
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetImageSaveAs(name, format, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageSaveAs method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageSaveAs() {
//		System.out.println("PostImageSaveAs");
//		String format = "";
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageSaveAs(format, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of GetTiffToFax method, of class ImagingApi.
	 */
	@Test
	public void testGetTiffToFax() {
		System.out.println("GetTiffToFax");
		String name = "sample.tiff";
		String storage = "";
		String folder = "";
		String outPath = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetTiffToFax(name, storage, folder, outPath);
			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostProcessTiff method, of class ImagingApi.
	 */
//	@Test
//	public void testPostProcessTiff() {
//		System.out.println("PostProcessTiff");
//		String compression = "";
//		String resolutionUnit = "";
//		Integer bitDepth = null;
//		Boolean fromScratch = null;
//		Float horizontalResolution = null;
//		Float verticalResolution = null;
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostProcessTiff(compression, resolutionUnit, bitDepth, fromScratch, horizontalResolution, verticalResolution, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}

	/**
	 * Test of PostTiffAppend method, of class ImagingApi.
	 */
//	@Test
//	public void testPostTiffAppend() {
//		System.out.println("PostTiffAppend");
//		String name = "sample.tiff";
//		String appendFile = "";
//		String storage = "";
//		String folder = "";
//
//		SaaSposeResponse expResult = new SaaSposeResponse();
//		expResult.setStatus("OK");
//		try {
//			SaaSposeResponse result = imaging.PostTiffAppend(name, appendFile, storage, folder);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}
//
	/**
	 * Test of GetUpdatedImage method, of class ImagingApi.
	 */
	@Test
	public void testGetUpdatedImage() {
		System.out.println("GetUpdatedImage");
		String name = "sample.tiff";
		String format = "gif";
		Integer newWidth = 300;
		Integer newHeight = 300;
		Integer x = 0;
		Integer y = 0;
		Integer rectWidth = 200;
		Integer rectHeight = 200;
		String rotateFlipMethod = "Rotate180FlipX";
		String outPath = "";
		String folder = "";
		String storage = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = imaging.GetUpdatedImage(name, format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, folder, storage);
			assertEquals(expResult.getStatus(), result.getStatus());
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImageSaveAs_ImagingApi_0 method, of class ImagingApi.
	 */
//	@Test
//	public void testPostImageSaveAs_ImagingApi_0() {
//		System.out.println("PostImageSaveAs_ImagingApi_0");
//		String format = "";
//		Integer newWidth = null;
//		Integer newHeight = null;
//		Integer x = null;
//		Integer y = null;
//		Integer rectWidth = null;
//		Integer rectHeight = null;
//		String rotateFlipMethod = "";
//		String outPath = "";
//		File file = null;
//
//		ResponseMessage expResult = new ResponseMessage();
//		expResult.setStatus("OK");
//		try {
//			ResponseMessage result = imaging.PostImageSaveAs_ImagingApi_0(format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, file);
//			assertEquals(expResult.getStatus(), result.getStatus());
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//	}
}
