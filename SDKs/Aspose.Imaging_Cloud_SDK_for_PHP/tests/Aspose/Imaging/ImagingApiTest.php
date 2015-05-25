<?php

use Aspose\Imaging\ImagingApi;

class ImagingApiTest extends PHPUnit_Framework_TestCase {
    
    protected $ocr;

    protected function setUp()
    {        
        $this->imaging = new ImagingApi();
    }
    
    public function testGetChangeImageScale()
    {
        $result = $this->imaging->GetChangeImageScale($name="Lighthouse.jpg", $format="png", $newWidth=100, $newHeight=100, $outPath="", $storage="", $folder="");
        $fh = fopen(getcwd(). '/Data/Output/Lighthouse.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Lighthouse.png');
    }
    
    public function testGetCropImage()
    {
        $result = $this->imaging->GetCropImage($name="Lighthouse.jpg", $format="jpg", $x=20, $y=20, $width=100, $height=80, $outPath="", $storage="", $folder="");
        $fh = fopen(getcwd(). '/Data/Output/Lighthouse.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Lighthouse.jpg');
    }
    
    public function testGetImageBmp()
    {
        $result = $this->imaging->GetImageBmp($name="test.bmp", $bitsPerPixel=24, $horizontalResolution=300, $verticalResolution=300, $fromScratch="", $outPath="updated.bmp", $storage="", $folder="");
        $fh = fopen(getcwd(). '/Data/Output/updated.bmp', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/updated.bmp');
    }
    
    public function testGetImageFrame()
    {
        $result = $this->imaging->GetImageFrame($name="Test.tiff", $frameId=1, $newWidth="", $newHeight="", $x="", $y="", $rectWidth="", $rectHeight="", $rotateFlipMethod="", $saveOtherFrames="", $outPath="frame.tiff", $storage="", $folder="");
        $fh = fopen(getcwd(). '/Data/Output/frame.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/frame.tiff');
    }
    
    public function testGetImageFrameProperties()
    {
        $result = $this->imaging->GetImageFrameProperties($name="Test.tiff", $frameId=1, $folder="", $storage="");        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetImageGif()
    {
        $result = $this->imaging->GetImageGif($name="test.gif", $backgroundColorIndex=32, $colorResolution=3, $hasTrailer = null, $interlaced = null, $isPaletteSorted = null, $pixelAspectRatio = null, $fromScratch = null, $outPath = "updated.gif", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/updated.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/updated.gif');
    }
    
    public function testGetImageJpg()
    {
        $result = $this->imaging->GetImageJpg($name="test.jpg", $quality = 45, $compressionType = null, $fromScratch = null, $outPath = "updated.jpg", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/updated.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/updated.jpg');
    }
    
    public function testGetImagePng()
    {
        $result = $this->imaging->GetImagePng($name="watermark.png", $fromScratch = null, $outPath = "updated.png", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/updated.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/updated.png');
    }
    
    public function testGetImageProperties()
    {
        $result = $this->imaging->GetImageProperties($name="test.tiff", $folder = null, $storage = null);
        //print_r($result);
        //$this->assertEquals(200, $result->Code);
    }
    
    public function testGetImagePsd()
    {
        $result = $this->imaging->GetImagePsd($name="bizcard.psd", $channelsCount = 3, $compressionMethod = "rle", $fromScratch = null, $outPath = "updated.psd", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/updated.psd', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/updated.psd');
    }
    
    public function testGetImageRotateFlip()
    {
        $result = $this->imaging->GetImageRotateFlip($name="Lighthouse.jpg", $format="png", $method="rotate270flipxy", $outPath = "rotateflip.png", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/rotateflip.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/rotateflip.png');
    }
    
    public function testGetImageSaveAs()
    {
        $result = $this->imaging->GetImageSaveAs($name="Lighthouse.jpg", $format="png", $outPath = "Lighthouse.png", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/Lighthouse.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Lighthouse.png');
    }
    
    public function testGetTiffToFax()
    {
        $result = $this->imaging->GetTiffToFax($name="crop_frame.tiff", $folder = null, $storage = null, $outPath = "Fax.tiff");
        $fh = fopen(getcwd(). '/Data/Output/Fax.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Fax.tiff');
    }
    
    public function testGetUpdatedImage()
    {
        $result = $this->imaging->GetUpdatedImage($name="Lighthouse.jpg", $format="png", $newWidth=200, $newHeight=200, $x=20, $y=20, $rectWidth=100, $rectHeight=100, $rotateFlipMethod="rotate90flipnone", $outPath = "update-image.png", $folder = null, $storage = null);
        $fh = fopen(getcwd(). '/Data/Output/update-image.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-image.png');
    }
    
    public function testPostChangeImageScale()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostChangeImageScale($format="jpg", $newWidth=50, $newHeight=50, $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/barcodeQR.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/barcodeQR.jpg');
    }
    
    public function testPostCropImage()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostCropImage($format="jpg", $x=20, $y=20, $width=50, $height=50, $outPath = "update-barcode.jpg", $file);
        $fh = fopen(getcwd(). '/Data/Output/update-barcode.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-barcode.jpg');
    }
    
    public function testPostImageBmp()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.bmp';
        $result = $this->imaging->PostImageBmp($bitsPerPixel=24, $horizontalResolution=100, $verticalResolution=100, $fromScratch = null, $outPath = "update-barcodeQR.bmp", $file);
        $fh = fopen(getcwd(). '/Data/Output/update-barcodeQR.bmp', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-barcodeQR.bmp');
    }
    
    public function testPostImageJpg()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.jpg';
        $result = $this->imaging->PostImageJpg($quality = 45, $compressionType = "baseline", $fromScratch = null, $outPath = "update-barcodeQR.jpg", $file);
        $fh = fopen(getcwd(). '/Data/Output/update-barcodeQR.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-barcodeQR.jpg');
    }
    
    public function testPostImagePng()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostImagePng($fromScratch = true, $outPath = "update-barcodeQR.png", $file);
        $fh = fopen(getcwd(). '/Data/Output/update-barcodeQR.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-barcodeQR.png');
    }
    
    public function testPostImagePsd()
    {
        $file = getcwd(). '/Data/Input/bizcard.psd';
        $result = $this->imaging->PostImagePsd($channelsCount = 4, $compressionMethod = "raw", $fromScratch = null, $outPath = "update-bizcard.psd", $file);
        $fh = fopen(getcwd(). '/Data/Output/update-bizcard.psd', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-bizcard.psd');
    }
    
    public function testPostImageRotateFlip()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostImageRotateFlip($format="jpg", $method="Rotate180FlipX", $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/barcodeQR.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/barcodeQR.jpg');
    }
    
    public function testPostImageSaveAs()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostImageSaveAs($format="jpg", $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/barcodeQR.jpg', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/barcodeQR.jpg');
    }
    
    public function testPostImageSaveAs_ImagingApi_0()
    {
        $file = getcwd(). '/Data/Input/barcodeQR.png';
        $result = $this->imaging->PostImageSaveAs_ImagingApi_0($format="gif", $newWidth=100, $newHeight=100, $x=10, $y=10, $rectWidth=50, $rectHeight=50, $rotateFlipMethod="Rotate90FlipY", $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/barcodeQR.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/barcodeQR.gif');
    }
    
    public function testPostProcessTiff()
    {
        $file = getcwd(). '/Data/Input/Test.tiff';
        $result = $this->imaging->PostProcessTiff($compression = "ccittfax3", $resolutionUnit = "inch", $bitDepth = 1, $fromScratch = null, $horizontalResolution = null, $verticalResolution = null, $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/Test.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.tiff');
    }
    
    public function testPostTiffAppend()
    {
        $result = $this->imaging->PostTiffAppend($name="crop_frame.tiff", $appendFile = "Updated.tiff", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    
                         
}    