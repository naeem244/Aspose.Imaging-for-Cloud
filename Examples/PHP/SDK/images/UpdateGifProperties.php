<?php require "../common.php";

$inputName = "sample1.gif";
$inputPath = getPath(__FILE__, $inputName);
$outputName = "output.gif";

$backgroundColorIndex = 255;
$colorResolution = 100;
$hasTrailer = true;
$interlaced = true;
$isPaletteSorted = true;
$pixelAspectRatio = 10;
$fromScratch = false;

$outputPath = getPath(__FILE__, $outputName);

getStorageSdk()->PutCreate($inputName, NULL, NULL, $inputPath);

$response = getImagingSdk()->GetImageGif($inputName, $backgroundColorIndex, $colorResolution, $hasTrailer, $interlaced, $isPaletteSorted, $pixelAspectRatio, $fromScratch, $outputPath, getFolder(), getStorage());;
$result = $storageApi->GetDownload($inputName);
getApiClient()->saveFile($result, $outputPath, $inputName);


