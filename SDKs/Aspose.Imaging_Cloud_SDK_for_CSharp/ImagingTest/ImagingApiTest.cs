using Com.Aspose.Imaging.Api;
using Com.Aspose.Imaging.Model;
using Com.Aspose.Storage.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ImagingTest
{
    
    
    /// <summary>
    ///This is a test class for TestImagingApi and is intended
    ///to contain all TestImagingApi Unit Tests
    ///</summary>
    [TestClass()]
    public class TestImagingApi
    {

        protected string APIKEY = "xxxxxx";
        protected string APPSID = "xxxxxx";
        protected string BASEPATH = "http://api.aspose.com/v1.1";
        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for GetChangeImageScale
        ///</summary>
        [TestMethod()]
        public void TestGetChangeImageScale()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose_imaging_for_cloud.png";
            string format = "jpg";
            int? newWidth = 200;
            int? newHeight = 200;
            string outPath = "";
            string folder = "";
            string storage = "";

             storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.GetChangeImageScale(name, format, newWidth, newHeight, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetCropImage
        ///</summary>
        [TestMethod()]
        public void TestGetCropImage()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose.jpg";
            string format = "png";
            int? x = 30;
            int? y = 40;
            int? width = 100;
            int? height = 100;
            string outPath = "";
            string folder = "";
            string storage = "";
             storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 
            ResponseMessage actual;
            actual = target.GetCropImage(name, format, x, y, width, height, outPath, folder, storage);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageBmp
        ///</summary>
        [TestMethod()]
        public void TestGetImageBmp()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample.bmp";
            int? bitsPerPixel = 24;
            int? horizontalResolution = 300;
            int? verticalResolution = 300;
            bool? fromScratch = null;
            string outPath = "";
            string folder = "";
            string storage = "";
             storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 
            ResponseMessage actual;
            actual = target.GetImageBmp(name, bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, folder, storage);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageFrame
        ///</summary>
        [TestMethod()]
        public void TestGetImageFrame()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-multi.tif";
            int? frameId = 1;
            int? newWidth = 200;
            int? newHeight = 200;
            int? x = 0;
            int? y = 0;
            int? rectWidth = 200;
            int? rectHeight = 200;
            string rotateFlipMethod = "Rotate180FlipX";
            bool? saveOtherFrames = true;
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetImageFrame(name, frameId, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, saveOtherFrames, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageFrameProperties
        ///</summary>
        [TestMethod()]
        public void TestGetImageFrameProperties()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "TestDemo.tif";
            int? frameId = 0;
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ImagingResponse actual;
            actual = target.GetImageFrameProperties(name, frameId, folder, storage);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ImagingResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageGif
        ///</summary>
        [TestMethod()]
        public void TestGetImageGif()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample.gif";
            string backgroundColorIndex = null;
            string colorResolution = null;
            bool? hasTrailer = null;
            bool? interlaced = null;
            bool? isPaletteSorted = null;
            string pixelAspectRatio = null;
            bool? fromScratch = null;
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.GetImageGif(name, backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, folder, storage);
            
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageJpg
        ///</summary>
        [TestMethod()]
        public void TestGetImageJpg()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose.jpg";
            int? quality = 100;
            string compressionType = "progressive";
            bool? fromScratch = null;
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetImageJpg(name, quality, compressionType, fromScratch, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImagePng
        ///</summary>
        [TestMethod()]
        public void TestGetImagePng()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose_imaging_for_cloud.png";
            bool? fromScratch = true;
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetImagePng(name, fromScratch, outPath, folder, storage);
            
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageProperties
        ///</summary>
        [TestMethod()]
        public void TestGetImageProperties()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "demo.tif";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ImagingResponse actual;
            actual = target.GetImageProperties(name, folder, storage);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ImagingResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImagePsd
        ///</summary>
        [TestMethod()]
        public void TestGetImagePsd()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample.psd";
            int? channelsCount = 3;
            string compressionMethod = "rle";
            bool? fromScratch = null;
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetImagePsd(name, channelsCount, compressionMethod, fromScratch, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageRotateFlip
        ///</summary>
        [TestMethod()]
        public void TestGetImageRotateFlip()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose.jpg";
            string format = "png";
            string method = "Rotate180FlipX";
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetImageRotateFlip(name, format, method, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageSaveAs
        ///</summary>
        [TestMethod()]
        public void TestGetImageSaveAs()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose.jpg";
            string format = "png";
            string outPath = "";
            string folder = "";
            string storage = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.GetImageSaveAs(name, format, outPath, folder, storage);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetTiffToFax
        ///</summary>
        [TestMethod()]
        public void TestGetTiffToFax()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "TestDemo.tif";
            string storage = "";
            string folder = "";
            string outPath = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            ResponseMessage actual;
            actual = target.GetTiffToFax(name, storage, folder, outPath);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetUpdatedImage
        ///</summary>
        [TestMethod()]
        public void TestGetUpdatedImage()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "TestDemo.tif";
            string format = "gif";
            int? newWidth = 300;
            int? newHeight = 300;
            int? x = 96;
            int? y = 96;
            int? rectWidth = 200;
            int? rectHeight = 200;
            string rotateFlipMethod = "Rotate180FlipX";
            string outPath = "";
            string folder = "";
            string storage = "";
             storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 
            ResponseMessage actual;
            actual = target.GetUpdatedImage(name, format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, outPath, folder, storage);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostChangeImageScale
        ///</summary>
        [TestMethod()]
        public void TestPostChangeImageScale()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose_imaging_for_cloud.png";
            string format = "jpg";
            int? newWidth = 200;
            int? newHeight = 200;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

             //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.PostChangeImageScale(format, newWidth, newHeight, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCropImage
        ///</summary>
        [TestMethod()]
        public void TestPostCropImage()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "aspose.jpg";
            string format = "png";
            int? x = 30;
            int? y = 40;
            int? width = 100;
            int? height = 100;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

             //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.PostCropImage(format, x, y, width, height, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImageBmp
        ///</summary>
        [TestMethod()]
        public void TestPostImageBmp()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "sample.bmp";
            int? bitsPerPixel = 24;
            int? horizontalResolution = 300;
            int? verticalResolution = 300;
            bool? fromScratch = null;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

             //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 

            ResponseMessage actual;
            actual = target.PostImageBmp(bitsPerPixel, horizontalResolution, verticalResolution, fromScratch, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        ///// <summary>
        /////A test for PostImageBmp_ImagingApi_0
        /////</summary>
        //[TestMethod()]
        //public void TestPostImageBmp_ImagingApi_0()
        //{
        //    ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
        //    StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            
        //    string backgroundColorIndex = "";
        //    string colorResolution = "";
        //    bool? hasTrailer = null;
        //    bool? interlaced = null;
        //    bool? isPaletteSorted = null;
        //    string pixelAspectRatio = "";
        //    bool? fromScratch = null;
        //    string outPath = "";
        //    byte[] file = null; 
        //     //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name)); 
        //    ResponseMessage actual;
        //    actual = target.PostImageBmp_ImagingApi_0(backgroundColorIndex, colorResolution, hasTrailer, interlaced, isPaletteSorted, pixelAspectRatio, fromScratch, outPath, file);
        //    Assert.AreEqual("200", actual.Code);
        //    Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        //}

        /// <summary>
        ///A test for PostImageJpg
        ///</summary>
        [TestMethod()]
        public void TestPostImageJpg()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            
            string name = "aspose.jpg";
            int? quality = 100;
            string compressionType = "progressive";
            bool? fromScratch = null;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

            ResponseMessage actual;
            actual = target.PostImageJpg(quality, compressionType, fromScratch, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImagePng
        ///</summary>
        [TestMethod()]
        public void TestPostImagePng()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            
            string name = "aspose_imaging_for_cloud.png";
            bool? fromScratch = true;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 
             
            ResponseMessage actual;
            actual = target.PostImagePng(fromScratch, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImagePsd
        ///</summary>
        [TestMethod()]
        public void TestPostImagePsd()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);

            string name = "sample.psd";
            int? channelsCount = 3;
            string compressionMethod = "rle";
            bool? fromScratch = null;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

            ResponseMessage actual;
            actual = target.PostImagePsd(channelsCount, compressionMethod, fromScratch, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImageRotateFlip
        ///</summary>
        [TestMethod()]
        public void TestPostImageRotateFlip()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "aspose.jpg";
            string format = "png";
            string method = "Rotate180FlipX";
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

            ResponseMessage actual;
            actual = target.PostImageRotateFlip(format, method, outPath, file);

            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImageSaveAs
        ///</summary>
        [TestMethod()]
        public void TestPostImageSaveAs()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "aspose.jpg";
            string format = "png";
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

            ResponseMessage actual;
            actual = target.PostImageSaveAs(format, outPath, file);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }


        /// <summary>
        ///A test for PostProcessTiff
        ///</summary>
        [TestMethod()]
        public void TestPostProcessTiff()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "demo.tif";
            string compression = "ccittfax3";
            string resolutionUnit = "inch";
            int? bitDepth = 1;
            bool? fromScratch = null;
            float? horizontalResolution = null;
            float? verticalResolution = null;
            string outPath = "";
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name); 

            ResponseMessage actual;
            actual = target.PostProcessTiff(compression, resolutionUnit, bitDepth, fromScratch, horizontalResolution, verticalResolution, outPath, file);
            
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostTiffAppend
        ///</summary>
        [TestMethod()]
        public void TestPostTiffAppend()
        {
            ImagingApi target = new ImagingApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample.tif";
            string appendFile = "TestDemo.tif";
            string storage = "";
            string folder = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\imaging\\resources\\" + name));

            SaaSposeResponse actual;
            actual = target.PostTiffAppend(name, appendFile, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType()); 
        }

    }
}
