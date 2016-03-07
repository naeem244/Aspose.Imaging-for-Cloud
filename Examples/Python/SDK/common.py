import os
import asposeimagingcloud.ApiClient
import asposeimagingcloud.ImagingApi
import asposestoragecloud.ApiClient
import asposestoragecloud.StorageApi

API_KEY = None
APP_SID = None
FOLDER = ""
STORAGE = None

# Instantiate Aspose Storage API SDK
storage_apiClient = asposestoragecloud.ApiClient.ApiClient(API_KEY, APP_SID, True)
StorageApi = asposestoragecloud.StorageApi.StorageApi(storage_apiClient)

# Instantiate Aspose Cells API SDK
api_client = asposeimagingcloud.ApiClient.ApiClient(API_KEY, APP_SID, True)
imagingApi = asposeimagingcloud.ImagingApi.ImagingApi(api_client)


def get_path(f, filename=None):
    r = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(f))))
    e = f[len(r) + len('/Python/SDK'):]
    d = "/data" + e[:-3]
    result = r + d

    if (os.path.exists(result)):
        if (filename):
            result += "/" + filename
            print "Using data file " + result
        else:
            print "Using data directory " + result
    else:
        print "Creating data directory " + result
        os.makedirs(result)

    return result
