# Aspose.Imaging Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud Imaging APIs](http://www.aspose.com/cloud/imaging-api.aspx) in your Ruby web apps.

## Installing
You can simply install Aspose Imaging Cloud SDK with gem:

`gem install aspose_imaging_cloud`

## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_imaging_cloud'

class ImagingUsage
  
  include AsposeImagingCloud
  include AsposeStorageCloud
	
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @imaging_api = ImagingApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new
    response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
  end
  
  def post_image_bmp
    #Update parameters of bmp image.
    bits_per_pixel = 24
    horizontal_resolution = 300
    vertical_resolution = 300
    file_name = "sample.bmp"
    file = File.open("data/" << file_name,"r") { |io| io.read }

    response = @imaging_api.post_image_bmp(bits_per_pixel, horizontal_resolution, vertical_resolution, file)
  end
  
  def post_image_rotate_flip
    # Rotate and flip existing image and get it from response.
    format = "png" 
    method = "Rotate180FlipX"
    file_name = "aspose.jpg"
    file = File.open("data/" << file_name,"r") { |io| io.read }

    response = @imaging_api.post_image_rotate_flip(format, method, file)
  end

end
```
## Unit Tests
Aspose Imaging SDK includes a suite of unit tests within the [test](https://github.com/asposeimaging/Aspose_Imaging_Cloud/blob/master/SDKs/Aspose.Imaging_Cloud_SDK_for_Ruby/test/imaging_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose Imaging SDK.

## Contact
Your feedback is very important to us. Please email us all your queries and feedback at marketplace@aspose.com.

## License
Aspose Imaging SDK is available under the MIT license. See the [LICENSE](https://github.com/asposeimaging/Aspose_Imaging_Cloud/blob/master/SDKs/Aspose.Imaging_Cloud_SDK_for_Ruby/LICENSE) file for more info.
