<?php require "../common.php";

$inputName = "sample1.bmp";
$inputPath = getPath(__FILE__, $inputName);
$outputName = "output.bmp";

$bitsPerPixel = 200;
$horizontalResolution = 100;
$verticalResolution = 50;
$fromScratch = false;

$outputPath = getPath(__FILE__, $outputName);

//getStorageSdk()->PostImageBmp($bitsPerPixel, $horizontalResolution, $verticalResolution, $fromScratch, $outputPath, $inputPath);
$response = getImagingSdk()->PostImageBmp($bitsPerPixel, $horizontalResolution, $verticalResolution, $fromScratch, $outputPath, $inputPath);

print_r($response);


