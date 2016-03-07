<?php require "../common.php";

$inputName = "sample1.tiff";
$inputPath = getPath(__FILE__, $inputName);


getStorageSdk()->PutCreate($inputName, NULL, NULL, $inputPath);

$response = $imagingApi->GetImageProperties($inputName, getFolder(), getStorage());

if ($response != null) {
    print_r($response);

}
