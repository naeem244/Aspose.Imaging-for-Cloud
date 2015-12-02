Pod::Spec.new do |s|
  s.name         = "AsposeImagingCloud"
  s.version      = "1.0.0"
  s.summary      = "Aspose.Imaging for Cloud"
  s.description  = <<-DESC
                   Aspose.Imaging for Cloud lets you use a REST API to inspect, convert, and transform images in the cloud. It supports the most popular image formats such as PSD, PNG, GIF, BMP, TIFF, and JPEG, and conversion between them. Aspose.Imaging for Cloud also provides a rich set of features for manipulating images on-the-fly with cloud based image transformations. You can resize, crop and/or rotate images various ways by simply creating a request that includes the correct transformation instructions. The most demanding imaging routines, for example TIFF concatenation and image conversion to fax compatible format, are available through efficient and reliable specialized resources. You can perform these operations without needing to know what's going on under the hood so that you can focus on the core business goals. 
                   DESC

  s.homepage     = "http://www.aspose.com/cloud/imaging-api.aspx"
  s.license = { :type => 'MIT', :file => 'LICENSE'}
  s.author = { "M. Sohail Ismail" => "muhammad.sohail@aspose.com" }
  s.social_media_url = "https://www.facebook.com/asposeplugins/"
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/asposeimaging/Aspose_Imaging_Cloud.git", :tag => "1.0.0" }
  
  s.subspec 'model' do |ss|
      ss.source_files = 'SDKs/Aspose.Imaging_Cloud_SDK_For_Objective_C/Aspose.Imaging_Cloud_SDK_For_Objective_C/imaging/model/*.{h,m}'
  end
  s.subspec 'api' do |ss|
      ss.dependency 'AsposeImagingCloud/model'
      ss.source_files = 'SDKs/Aspose.Imaging_Cloud_SDK_For_Objective_C/Aspose.Imaging_Cloud_SDK_For_Objective_C/imaging/api/*.{h,m}'
  end
  
  s.dependency "AFNetworking", "~> 2.0"
  s.dependency "JSONModel", "~> 1.1"
  s.dependency "ISO8601", "~> 0.3"
  s.dependency "AsposeStorageCloud"

  s.requires_arc = true

end