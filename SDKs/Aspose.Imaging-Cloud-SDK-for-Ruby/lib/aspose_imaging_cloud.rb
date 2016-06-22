require 'aspose_storage_cloud'

# Common files
require_relative 'aspose_imaging_cloud/api_client'
require_relative 'aspose_imaging_cloud/api_error'
require_relative 'aspose_imaging_cloud/version'
require_relative 'aspose_imaging_cloud/configuration'

# Models
require_relative 'aspose_imaging_cloud/models/base_object'
require_relative 'aspose_imaging_cloud/models/base_response'
require_relative 'aspose_imaging_cloud/models/imaging_response'
require_relative 'aspose_imaging_cloud/models/bmp_properties'
require_relative 'aspose_imaging_cloud/models/gif_properties'
require_relative 'aspose_imaging_cloud/models/jpeg_properties'
require_relative 'aspose_imaging_cloud/models/tiff_properties'
require_relative 'aspose_imaging_cloud/models/psd_properties'
require_relative 'aspose_imaging_cloud/models/jpeg_exif_data'
require_relative 'aspose_imaging_cloud/models/jfif_data'
require_relative 'aspose_imaging_cloud/models/tiff_frame'
require_relative 'aspose_imaging_cloud/models/exif_data'
require_relative 'aspose_imaging_cloud/models/tiff_options'

# APIs
require_relative 'aspose_imaging_cloud/api/imaging_api'

module AsposeImagingCloud
  class << self
    # Configure sdk using block.
    # AsposeImagingCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
