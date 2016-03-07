<?php require "../common.php";

$inputName = "sample1.bmp";
$inputPath = getPath(__FILE__, $inputName);
$outputName = "output.bmp";
$outputPath = getPath(__FILE__, $outputName);

getStorageSdk()->PutCreate($inputName, NULL, NULL, $inputPath);

$bitsPerPixel = 24;
$horizontalResolution = 200;
$verticalResolution = 100;
$fromScratch = false;
$outPath = "";
$response = getImagingSdk()->GetImageBmp($inputName, $bitsPerPixel, $horizontalResolution, $verticalResolution, $fromScratch, $outPath, getFolder(), getStorage());
$result = $storageApi->GetDownload($inputName);
getApiClient()->saveFile($result, $outputPath, $inputName);


