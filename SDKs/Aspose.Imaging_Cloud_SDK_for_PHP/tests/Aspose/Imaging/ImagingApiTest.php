<?php

use Aspose\Imaging\ImagingApi;
use Aspose\Storage\StorageApi;

class ImagingApiTest extends PHPUnit_Framework_TestCase {

    protected $imaging;
    protected $storageApi;

    protected function setUp() {
	$this->imaging = new ImagingApi();
	$this->storageApi = new StorageApi();
    }

    public function testGetChangeImageScale() {
	$name = 'Lighthouse.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetChangeImageScale($name, $format = "png", $newWidth = 100, $newHeight = 100, $outPath = "", $storage = "", $folder = "");
	$fh = fopen(getcwd() . '/Data/Output/Lighthouse.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/Lighthouse.png');
    }

    public function testGetCropImage() {
	$name = 'aspose.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetCropImage($name, $format = "jpg", $x = 30, $y = 40, $width = 100, $height = 100, $outPath = "", $storage = "", $folder = "");
	$fh = fopen(getcwd() . '/Data/Output/aspose.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/aspose.jpg');
    }

    public function testGetImageBmp() {
	$name = 'test.bmp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageBmp($name, $bitsPerPixel = 24, $horizontalResolution = 300, $verticalResolution = 300, $fromScratch = "", $outPath = "updated.bmp", $storage = "", $folder = "");
	$this->assertInternalType('string', $result);
	$fh = fopen(getcwd() . '/Data/Output/updated.bmp', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/updated.bmp');
    }

    public function testGetImageFrame() {
	$name = 'sample-multi.tif';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageFrame($name, $frameId = 1, $newWidth = "", $newHeight = "", $x = "", $y = "", $rectWidth = "", $rectHeight = "", $rotateFlipMethod = "", $saveOtherFrames = "", $outPath = "frame.tiff", $storage = "", $folder = "");
	$this->assertInternalType('string', $result);
	$fh = fopen(getcwd() . '/Data/Output/frame.tif', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/frame.tif');
    }

    public function testGetImageFrameProperties() {
	$name = 'sample-multi.tif';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageFrameProperties($name, $frameId = 1, $folder = "", $storage = "");
	$this->assertEquals(200, $result->Code);
    }

    public function testGetImageGif() {
	$name = 'sample.gif';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageGif($name, $backgroundColorIndex = 32, $colorResolution = 3, $hasTrailer = null, $interlaced = null, $isPaletteSorted = null, $pixelAspectRatio = null, $fromScratch = null, $outPath = "updated.gif", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/updated.gif', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/updated.gif');
    }

    public function testGetImageJpg() {
	$name = 'Lighthouse.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageJpg($name, $quality = 45, $compressionType = null, $fromScratch = null, $outPath = "updated.jpg", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/updated.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/updated.jpg');
    }

    public function testGetImagePng() {
	$name = 'barcodeQR.png';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImagePng($name, $fromScratch = null, $outPath = "updated.png", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/updated.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/updated.png');
    }

    public function testGetImageProperties() {
	$name  = "sample-multi.tif";
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageProperties($name, $folder = null, $storage = null);
	//print_r($result);
	//$this->assertEquals(200, $result->Code);
    }

    public function testGetImagePsd() {
	$name = "sample.psd";
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImagePsd($name , $channelsCount = 3, $compressionMethod = "rle", $fromScratch = null, $outPath = "updated.psd", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/updated.psd', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/updated.psd');
    }

    public function testGetImageRotateFlip() {
	$name = 'Lighthouse.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageRotateFlip($name, $format = "png", $method = "rotate270flipxy", $outPath = "rotateflip.png", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/rotateflip.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/rotateflip.png');
    }

    public function testGetImageSaveAs() {
	$name = 'Lighthouse.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetImageSaveAs($name, $format = "png", $outPath = "Lighthouse.png", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/Lighthouse.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/Lighthouse.png');
    }

    public function testGetTiffToFax() {
	$name = "TestDemo.tif";
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetTiffToFax($name , $folder = null, $storage = null, $outPath = "Fax.tiff");
	$fh = fopen(getcwd() . '/Data/Output/Fax.tiff', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/Fax.tiff');
    }

    public function testGetUpdatedImage() {
	$name = 'Lighthouse.jpg';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->imaging->GetUpdatedImage($name, $format = "png", $newWidth = 200, $newHeight = 200, $x = 20, $y = 20, $rectWidth = 100, $rectHeight = 100, $rotateFlipMethod = "rotate90flipnone", $outPath = "update-image.png", $folder = null, $storage = null);
	$fh = fopen(getcwd() . '/Data/Output/update-image.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-image.png');
    }

    public function testPostChangeImageScale() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostChangeImageScale($format = "jpg", $newWidth = 50, $newHeight = 50, $outPath = null, $file);
	$fh = fopen(getcwd() . '/Data/Output/barcodeQR.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/barcodeQR.jpg');
    }

    public function testPostCropImage() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostCropImage($format = "jpg", $x = 20, $y = 20, $width = 50, $height = 50, $outPath = "update-barcode.jpg", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-barcode.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-barcode.jpg');
    }

    public function testPostImageBmp() {
	$file = getcwd() . '/Data/Input/barcodeQR.bmp';

	$result = $this->imaging->PostImageBmp($bitsPerPixel = 24, $horizontalResolution = 100, $verticalResolution = 100, $fromScratch = null, $outPath = "update-barcodeQR.bmp", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-barcodeQR.bmp', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-barcodeQR.bmp');
    }

    public function testPostImageJpg() {
	$file = getcwd() . '/Data/Input/barcodeQR.jpg';

	$result = $this->imaging->PostImageJpg($quality = 45, $compressionType = "baseline", $fromScratch = null, $outPath = "update-barcodeQR.jpg", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-barcodeQR.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-barcodeQR.jpg');
    }

    public function testPostImagePng() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostImagePng($fromScratch = true, $outPath = "update-barcodeQR.png", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-barcodeQR.png', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-barcodeQR.png');
    }

    public function testPostImagePsd() {
	$file = getcwd() . '/Data/Input/sample.psd';

	$result = $this->imaging->PostImagePsd($channelsCount = 4, $compressionMethod = "raw", $fromScratch = null, $outPath = "update-bizcard.psd", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-bizcard.psd', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-bizcard.psd');
    }

    public function testPostImageRotateFlip() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostImageRotateFlip($format = "jpg", $method = "Rotate180FlipX", $outPath = null, $file);
	$fh = fopen(getcwd() . '/Data/Output/barcodeQR.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/barcodeQR.jpg');
    }

    public function testPostImageSaveAs() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostImageSaveAs($format = "jpg", $outPath = null, $file);
	$fh = fopen(getcwd() . '/Data/Output/barcodeQR.jpg', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/barcodeQR.jpg');
    }

    public function testPostImageSaveAs_ImagingApi_0() {
	$file = getcwd() . '/Data/Input/barcodeQR.png';

	$result = $this->imaging->PostImageSaveAs_ImagingApi_0($format = "gif", $newWidth = 100, $newHeight = 100, $x = 10, $y = 10, $rectWidth = 50, $rectHeight = 50, $rotateFlipMethod = "Rotate90FlipY", $outPath = null, $file);
	$fh = fopen(getcwd() . '/Data/Output/barcodeQR.gif', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/barcodeQR.gif');
    }

    public function testPostProcessTiff() {
	$file = getcwd() . '/Data/Input/sample-multi.tif';

	$result = $this->imaging->PostProcessTiff($compression = "ccittfax3", $resolutionUnit = "inch", $bitDepth = 1, $fromScratch = null, $horizontalResolution = null, $verticalResolution = null, $outPath = null, $file);
	$fh = fopen(getcwd() . '/Data/Output/sample-multi.tif', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/sample-multi.tif');
    }

    public function testPostTiffAppend() {
	$name = "sample.tif";
	$appendFile  = "TestDemo.tif";
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->storageApi->PutCreate($appendFile, "", $storage = "", getcwd() . '\\Data\\Input\\' . $appendFile);
	
	$result = $this->imaging->PostTiffAppend($name , $appendFile, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
    }
    
    public function testPostImageBmp_ImagingApi_0() {
	$file = getcwd() . '/Data/Input/barcodeQR.bmp';

	
	$result = $this->imaging->PostImageBmp_ImagingApi_0($backgroundColorIndex = 32, $colorResolution = 3, $hasTrailer = null, $interlaced = null, $isPaletteSorted = null, $pixelAspectRatio = null, $fromScratch = true, $outPath = "barcodeQR.bmp", $file);
	$fh = fopen(getcwd() . '/Data/Output/update-barcodeQR.bmp', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/update-barcodeQR.bmp');
    }

}
