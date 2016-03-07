<?php require('vendor/autoload.php');

use Aspose\Imaging\ImagingApi;
use Aspose\Storage\StorageApi;
use Aspose\Storage\APIClient;

\Aspose\Storage\AsposeApp::$apiKey = NULL;
\Aspose\Storage\AsposeApp::$appSID = NULL;
\Aspose\Imaging\AsposeApp::$apiKey = NULL;
\Aspose\Imaging\AsposeApp::$appSID = NULL;
$FOLDER = "";
$STORAGE = "";

function getPath($f, $fileName = NULL)
{
    $rootPath = dirname(dirname(dirname(__FILE__)));
    $packg = basename((dirname($f)));
    $fName = basename($f, '.php');
    $fullPath = $rootPath . '\\data\\' . $packg . '\\' . $fName;
    if($fileName == NULL){
        return $fullPath;
    }
    else{
        if(!file_exists($fullPath . '\\' . $fileName)) {
            $handle = fopen($fullPath.'\\'.$fileName, 'w');
            fclose($handle);
        }
    }
    $fullPath = $fullPath . '\\' . $fileName;
    return $fullPath;
}

$imagingApi = new ImagingApi();
function getImagingSdk()
{
    return $GLOBALS['imagingApi'];
}

$storageApi = new StorageApi();
function getStorageSdk()
{
    return $GLOBALS['storageApi'];
}

$apiClient = new APIClient();
function getApiClient()
{
    return $GLOBALS['apiClient'];
}

function getFolder()
{
    return $GLOBALS['FOLDER'];
}

function getStorage()
{
    return $GLOBALS['STORAGE'];
}
