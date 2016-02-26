using System;
using System.Collections.Generic;
using System.Text;
using Com.Aspose.Imaging.Api;
using Com.Aspose.Storage.Api;
using Com.Aspose.Imaging.Model;
namespace AsposeImaging
{
    class imaging
    {
        public static void Main(String[] args)
        {

string APIKEY = "xxxxxx";
string APPSID = "xxxxxx";
string BASEPATH = "http://api.aspose.com/v1.1";

///*
//*  Working with Image Properties 
//*  Get Image Properties 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "demo.tif";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ImagingResponse apiResponse = imagingApi.GetImageProperties(fileName, folder, storage);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Get Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Image Properties 
//*  Working with BMP Properties - Update BMP Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.bmp";
//int bitsPerPixel = 24;
//int horizontalResolution = 300;
//int verticalResolution = 300;
//Boolean fromScratch = false;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImageBmp(bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with BMP Properties - Update BMP Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Image Properties 
//*  Working with BMP Properties - Update BMP Image Properties 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.bmp";
//int bitsPerPixel = 24;
//int horizontalResolution = 300;
//int verticalResolution = 300;
//Boolean fromScratch = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageBmp(fileName, bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with BMP Properties - Update BMP Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with GIF Properties - Update GIF Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.gif";
//int backgroundColorIndex = 255;
//int colorResolution = 7;
//Boolean hasTrailer = true;
//Boolean interlaced = true;
//Boolean isPaletteSorted = true;
//int pixelAspectRatio = 10;
//Boolean fromScratch = false;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImageGif(backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with GIF Properties - Update GIF Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with GIF Properties - Update GIF Image Properties  
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.gif";
//String backgroundColorIndex = "255";
//String colorResolution = "7";
//Boolean hasTrailer = true;
//Boolean interlaced = true;
//Boolean isPaletteSorted = true;
//String pixelAspectRatio = "10";
//Boolean fromScratch = true;
//String outPath = "";
//String folder = "";
//String storage = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageGif(fileName, backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with GIF Properties - Update GIF Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with TIFF Properties - Update TIFF Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "demo.tif";
//String compression = "ccittfax3";
//String resolutionUnit = "inch";
//int bitDepth = 1;
//Boolean fromScratch = false;
//float horizontalResolution = 96.0f;
//float verticalResolution = 96.0f;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostProcessTiff(compression, resolutionUnit, bitDepth, fromScratch, horizontalResolution, verticalResolution, outPath, file);


//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with TIFF Properties - Update TIFF Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with TIFF Properties - Update TIFF Image Properties 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "demo.tif";
//String compression = "ccittfax3";
//String resolutionUnit = "inch";
//int bitDepth = 1;
//Boolean fromScratch = false;
//float horizontalResolution = 96.0f;
//float verticalResolution = 96.0f;
//String outPath = "";
////Path to updated file, if this is empty, response contains streamed image.
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostProcessTiff(compression, resolutionUnit, bitDepth, fromScratch, horizontalResolution, verticalResolution, outPath, file);


//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with TIFF Properties - Update TIFF Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with JPG Properties - Update JPG Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose.jpg";
//int quality = 100;
//String compressionType = "progressive";
//Boolean fromScratch = false;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImageJpg(quality, compressionType, fromScratch, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with JPG Properties - Update JPG Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with JPG Properties - Update JPG Image Properties 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose.jpg";
//int quality = 100;
//String compressionType = "progressive";
//Boolean fromScratch = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageJpg(fileName, quality, compressionType, fromScratch, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with JPG Properties - Update JPG Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with PSD Properties - Update PSD Image Properties 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.psd";
//int channelsCount = 3;
//String compressionMethod = "rle";
//Boolean fromScratch = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImagePsd(fileName, channelsCount, compressionMethod, fromScratch, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with PSD Properties - Update PSD Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with PSD Properties - Update PSD Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.psd";
//int channelsCount = 3;
//String compressionMethod = "rle";
//Boolean fromScratch = false;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImagePsd(channelsCount, compressionMethod, fromScratch, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with PSD Properties - Update PSD Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with PNG Properties - Update PNG Image Properties  
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose_imaging_for_cloud.png";
//bool fromScratch = true;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImagePng(fileName, fromScratch, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with PNG Properties - Update PNG Image Properties, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Image Properties 
//*  Working with PNG Properties - Update PNG Image Properties Without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose_imaging_for_cloud.png";
//Boolean fromScratch = true;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImagePng(fromScratch, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Working with PNG Properties - Update PNG Image Properties Without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Resize Image without Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose_imaging_for_cloud.png";
//String format = "png";
//int newWidth = 200;
//int newHeight = 200;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostChangeImageScale(format, newWidth, newHeight, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Resize Image without Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Resize Image with Format Change 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "aspose_imaging_for_cloud";
//String fileName = name + ".png";
//String format = "jpg";
//int newWidth = 200;
//int newHeight = 200;
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostChangeImageScale(format, newWidth, newHeight, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Resize Image with Format Change, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Crop Image with Format Change 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "aspose";
//String fileName = name + ".jpg";
//String format = "png";
//int x = 30;
//int y = 40;
//int width = 100;
//int height = 100;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetCropImage(fileName, format, x, y, width, height, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
            //        System.IO.File.WriteAllBytes("\\temp\\new_" + name + "." +  format, apiResponse.ResponseStream);
//        Console.WriteLine("Crop Image with Format Change, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  RotateFlip Image on Storage 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "aspose";
//String fileName = name + ".jpg";
//String format = "png";
//String method = "Rotate180FlipX";
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageRotateFlip(fileName, format, method, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + name + "." + format, apiResponse.ResponseStream);
//        Console.WriteLine("RotateFlip Image on Storage, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Convert Image Format 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "aspose";
//String fileName = name + ".jpg";
//String format = "png";
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImageSaveAs(format, outPath, file);


//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + name + "." + format, apiResponse.ResponseStream);
//        Console.WriteLine("Convert Image Format , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Merge Tiff Images
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample.tif";
//String appendFile = "TestDemo.tif";
//String storage = "";
//String folder = "";

//try
//{
//    //    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));
//    storageApi.PutCreate(appendFile, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + appendFile));
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = imagingApi.PostTiffAppend(fileName, appendFile, storage, folder);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        Com.Aspose.Storage.Model.ResponseMessage storageRes = storageApi.GetDownload(fileName, null, null);
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, storageRes.ResponseStream);
//        Console.WriteLine("Merge Tiff Images, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Converts Tiff Image to Fax Compatible Format 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "TestDemo.tif";
//String storage = "";
//String folder = "";
//String outPath = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetTiffToFax(fileName, storage, folder, outPath);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Converts Tiff Image to Fax Compatible Format, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Manipulating Images 
//*  Perform Several Operations on Image 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "aspose.jpg";
//String format = "jpg";
//int newWidth = 200;
//int newHeight = 200;
//int x = 100;
//int y = 100;
//int rectWidth = 100;
//int rectHeight = 100;
//String rotateFlipMethod = "rotate90flipnone";
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.PostImageSaveAs(format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Perform Several Operations on Image , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with TIFF Frames 
//*  Extract Frame from a Multi-Frame TIFF Image 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-multi.tif";
//int frameId = 1;
//int newWidth = 300;
//int newHeight = 300;
//int x = 100;
//int y = 100;
//int rectWidth = 200;
//int rectHeight = 200;
//String rotateFlipMethod = "";
//Boolean saveOtherFrames = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Extract Frame from a Multi-Frame TIFF Image, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with TIFF Frames 
//*  Resize a TIFF Frame 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-multi.tif";
//int frameId = 1;
//int newWidth = 300;
//int newHeight = 300;
//int x = 100;
//int y = 100;
//int rectWidth = 200;
//int rectHeight = 200;
//String rotateFlipMethod = "";
//Boolean saveOtherFrames = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Resize a TIFF Frame, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with TIFF Frames 
//*  Extract Frame from a Multi-Frame TIFF Image 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "TestDemo.tif";
//int frameId = 0;
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ImagingResponse apiResponse = imagingApi.GetImageFrameProperties(fileName, frameId, folder, storage);


//    if (apiResponse != null)
//    {
//        Console.WriteLine("Extract Frame from a Multi-Frame TIFF Image, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with TIFF Frames 
//*  Crop a TIFF Frame 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "TestDemo.tif";
//int frameId = 0;
//int newWidth = 200;
//int newHeight = 200;
//int x = 20;
//int y = 20;
//int rectWidth = 100;
//int rectHeight = 100;
//String rotateFlipMethod = "";
//Boolean saveOtherFrames = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("Extract Frame from a Multi-Frame TIFF Image, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with TIFF Frames 
//*  RotateFlip a TIFF Frame 
//*/

//ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "TestDemo.tif";
//int frameId = 0;
//int newWidth = 0;
//int newHeight = 0;
//int x = 0;
//int y = 0;
//int rectWidth = 0;
//int rectHeight = 0;
//String rotateFlipMethod = "rotate90flipnone";
//Boolean saveOtherFrames = false;
//String outPath = "";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
//        Console.WriteLine("RotateFlip a TIFF Frame, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



/*
*  Working with TIFF Frames 
*  Manipulate a Frame and Save the Modified Frame Along with Unmodified Frames 
*/

ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

String fileName = "sample-multi.tif";
int frameId = 1;
int newWidth = 0;
int newHeight = 0;
int x = 0;
int y = 0;
int rectWidth = 0;
int rectHeight = 0;
String rotateFlipMethod = "rotate90flipnone";
Boolean saveOtherFrames = false;
String outPath = "";
String folder = "";
String storage = "";

try
{
    //upload source file to aspose cloud storage
    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

    //invoke Aspose.PDF Cloud SDK API to append word document
    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

    if (apiResponse != null)
    {
        //download appended document from storage server
        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
        Console.WriteLine("Manipulate a Frame and Save the Modified Frame Along with Unmodified Frames, Done!");
        Console.ReadKey();
    }
}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

}



            ///*
            //*  Working with TIFF Frames 
            //*  Extract Frame from a Multi-Frame TIFF Image 
            //*/

            //ImagingApi imagingApi = new ImagingApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //String fileName = "sample-multi.tif";
            //int frameId = 1;
            //int newWidth = 300;
            //int newHeight = 300;
            //int x = 100;
            //int y = 100;
            //int rectWidth = 200;
            //int rectHeight = 200;
            //String rotateFlipMethod = "";
            //Boolean saveOtherFrames = false;
            //String outPath = "";
            //String folder = "";
            //String storage = "";

            //try
            //{
            //    //upload source file to aspose cloud storage
            //    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + fileName));

            //    //invoke Aspose.PDF Cloud SDK API to append word document
            //    ResponseMessage apiResponse = imagingApi.GetImageFrame(fileName, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

            //    if (apiResponse != null)
            //    {
            //        //download appended document from storage server
            //        System.IO.File.WriteAllBytes("\\temp\\new_" + fileName, apiResponse.ResponseStream);
            //        Console.WriteLine("Extract Frame from a Multi-Frame TIFF Image, Done!");
            //        Console.ReadKey();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

            //}



//
// End...
//

        }
    }
}
