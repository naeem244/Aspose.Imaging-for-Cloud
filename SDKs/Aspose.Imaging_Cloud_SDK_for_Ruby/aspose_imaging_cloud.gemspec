# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_imaging_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_imaging_cloud"
  s.version     = AsposeImagingCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/imaging-api.aspx"
  s.summary     = %q{Aspose.Imaging for Cloud}
  s.description = %q{Aspose.Imaging for Cloud lets you use a REST API to inspect, convert, and transform images in the cloud. It supports the most popular image formats such as PSD, PNG, GIF, BMP, TIFF, and JPEG, and conversion between them. Aspose.Imaging for Cloud also provides a rich set of features for manipulating images on-the-fly with cloud based image transformations. You can resize, crop and/or rotate images various ways by simply creating a request that includes the correct transformation instructions. The most demanding imaging routines, for example TIFF concatenation and image conversion to fax compatible format, are available through efficient and reliable specialized resources. You can perform these operations without needing to know what's going on under the hood so that you can focus on the core business goals.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'
  s.add_runtime_dependency 'aspose_storage_cloud', '~> 1.0', '>= 1.0.0'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end