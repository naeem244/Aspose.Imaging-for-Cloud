require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_imaging_cloud'

class ImagingTests < Minitest::Test
	include MiniTest::Assertions
	include AsposeImagingCloud
	include AsposeStorageCloud
	
	def setup
        #Get App key and App SID from https://cloud.aspose.com
        AsposeApp.app_key_and_sid("", "")
		@imaging_api = ImagingApi.new
	end

	def teardown
	end

	def upload_file(file_name)
        @storage_api = StorageApi.new
		response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
		assert(response, message="Failed to upload {file_name} file.")
	end

	def test_post_image_bmp
    	bits_per_pixel = 24
    	horizontal_resolution = 300
    	vertical_resolution = 300
    	file_name = "sample.bmp"
    	file = File.open("data/" << file_name,"r") { |io| io.read }

        response = @imaging_api.post_image_bmp(bits_per_pixel, horizontal_resolution, vertical_resolution, file)
	 	assert(response, message="Failed to update parameters of bmp image.")
	end

	def test_post_crop_image
    	format = "png"
    	x = 30
    	y = 40
    	width = 100  
    	height = 100
    	file_name = "aspose.jpg"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
        
        response = @imaging_api.post_crop_image(format, x, y, width, height, file)
	 	assert(response, message="Failed to crop image from body")
	end

	def test_post_image_gif
		file_name = "sample.gif"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
    	opts = {background_color_index: "255", color_resolution: "7"}
        
        response = @imaging_api.post_image_gif(file, opts)
	 	assert(response, message="Failed to update parameters of gif image.")
	end

	def test_post_image_jpg
    	file_name = "aspose.jpg"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
    	opts = {quality: 100, compression_type: "progressive"}

        response = @imaging_api.post_image_jpg(file, opts)
	 	assert(response, message="Failed to update parameters of jpg image.")
	end

	def test_post_image_png
    	file_name = "aspose_imaging_for_cloud.png"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
    	opts = {from_scratch: true}

        response = @imaging_api.post_image_png(file, opts)
	 	assert(response, message="Failed to update parameters of png image.")
	end

	def test_post_image_psd
    	file_name = "sample.psd"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
    	opts = {channels_count: 3, compression_method: "rle"}

        response = @imaging_api.post_image_psd(file, opts)
	 	assert(response, message="Failed to update parameters of psd image.")
	end

	def test_post_change_image_scale
    	format = "jpg"
    	new_width = 200
    	new_height = 200
    	file_name = "aspose_imaging_for_cloud.png"
    	file = File.open("data/" << file_name,"r") { |io| io.read }

        response = @imaging_api.post_change_image_scale(format, new_width, new_height, file)
	 	assert(response, message="Failed to change scale of an image from body.")
	end

	def test_post_image_rotate_flip
    	format = "png" 
    	method = "Rotate180FlipX"
    	file_name = "aspose.jpg"
    	file = File.open("data/" << file_name,"r") { |io| io.read }

        response = @imaging_api.post_image_rotate_flip(format, method, file)
	 	assert(response, message="Failed to rotate and flip existing image.")
	end

	def test_post_image_save_as
    	format = "png" 
    	file_name = "aspose.jpg"
    	file = File.open("data/" << file_name,"r") { |io| io.read }

        response = @imaging_api.post_image_save_as(format, file)
	 	assert(response, message="Failed to export existing image to another format.")
	end

	def test_post_process_tiff
    	file_name = "demo.tif"
    	file = File.open("data/" << file_name,"r") { |io| io.read }
    	opts = {compression: "ccittfax3", resolution_unit: "inch", bit_depth: 1}

        response = @imaging_api.post_process_tiff(file, opts)
	 	assert(response, message="Failed to update tiff image.")
	end

	def test_post_tiff_append
    	file_name = "sample.tif"
    	upload_file(file_name)
    	append_file = "TestDemo.tif"
    	upload_file(append_file)
    	opts = {append_file: append_file}

        response = @imaging_api.post_tiff_append(file_name, opts)
	 	assert(response, message="Failed to append tiff image.")
	end

	def test_get_tiff_to_fax
    	file_name = "TestDemo.tif"
    	upload_file(file_name)

        response = @imaging_api.get_tiff_to_fax(file_name)
	 	assert(response, message="Failed to get tiff image for fax.")
	end

	def test_post_image_save_as_1
    	format = "png"
    	new_width = 300
    	new_height = 300
    	x = 96
    	y = 96
    	rect_width = 200 
    	rect_height = 200
    	rotate_flip_method = "" 
    	file_name = "TestDemo.tif"
    	file = File.open("data/" << file_name,"r") { |io| io.read }

        response = @imaging_api.post_image_save_as_1(format, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, file)
	 	assert(response, message="Failed to perform scaling, cropping and flipping of an image in single request.")
	end

	def test_get_image_bmp
    	file_name = "sample.bmp"
    	upload_file(file_name)
    	bits_per_pixel = 24
    	horizontal_resolution = 300 
    	vertical_resolution = 300

        response = @imaging_api.get_image_bmp(file_name, bits_per_pixel, horizontal_resolution, vertical_resolution)
	 	assert(response, message="Failed to update parameters of bmp image.")
	end

	def test_get_crop_image
    	file_name = "aspose.jpg"
    	upload_file(file_name)
    	format = "png"
    	x = 30
    	y = 40
    	width = 100
    	height = 100

        response = @imaging_api.get_crop_image(file_name, format, x, y, width, height)
	 	assert(response, message="Failed to crop existing image.")
	end

	def test_get_image_frame
    	file_name = "sample-multi.tif"
    	upload_file(file_name)
    	frame_id = 1

        response = @imaging_api.get_image_frame(file_name, frame_id)
	 	assert(response, message="Failed to get separate frame of tiff image.")
	end

	def test_get_image_frame_properties
    	file_name = "TestDemo.tif"
    	upload_file(file_name)
    	frame_id = 0

        response = @imaging_api.get_image_frame_properties(file_name, frame_id)
	 	assert(response, message="Failed to get properties of a tiff frame.")
	end

	def test_get_image_gif
    	file_name = "sample.gif"
    	upload_file(file_name)

        response = @imaging_api.get_image_gif(file_name)
	 	assert(response, message="Failed to update parameters of GIF image.")
	end

	def test_get_image_jpg
		file_name = "aspose.jpg"
    	upload_file(file_name)
    	opts = {quality: 100, compression_type: "progressive"}

        response = @imaging_api.get_image_jpg(file_name, opts)
	 	assert(response, message="Failed to update parameters of jpg image.")
	end

	def test_get_image_png
    	file_name = "aspose_imaging_for_cloud.png"
    	upload_file(file_name)
    	opts = {from_scratch: true}

        response = @imaging_api.get_image_png(file_name, opts)
	 	assert(response, message="Failed to update parameters of png image.")
	end

	def test_get_image_properties
    	file_name = "demo.tif"
    	upload_file(file_name)

        response = @imaging_api.get_image_properties(file_name)
	 	assert(response, message="Failed to get properties of an image.")
	end

	def test_get_image_psd
    	file_name = "sample.psd"
    	upload_file(file_name)
    	opts = {channels_count: 3, compression_method: "rle"}

        response = @imaging_api.get_image_psd(file_name, opts)
	 	assert(response, message="Failed to update parameters of psd image.")
	end

	def test_get_change_image_scale
    	file_name = "aspose_imaging_for_cloud.png"
    	upload_file(file_name)
    	format = "jpg"
    	new_width = 200 
    	new_height = 200

        response = @imaging_api.get_change_image_scale(file_name, format, new_width, new_height)
	 	assert(response, message="Failed to change scale of an existing image.")
	end

	def test_get_image_rotate_flip
    	file_name = "aspose.jpg"
    	upload_file(file_name)
    	format = "png" 
    	method = "Rotate180FlipX"

        response = @imaging_api.get_image_rotate_flip(file_name, format, method)
	 	assert(response, message="Failed to rotate and flip existing image")
	end

	def test_get_image_save_as
    	file_name = "aspose.jpg"
    	upload_file(file_name)
    	format = "png"

        response = @imaging_api.get_image_save_as(file_name, format)
	 	assert(response, message="Failed to export existing image to another format.")
	end

	def test_get_updated_image
    	file_name = "TestDemo.tif"
    	upload_file(file_name)
    	format = "png"
    	new_width = 300
    	new_height = 300
    	x = 96
    	y = 96
    	rect_width = 200 
    	rect_height = 200
    	rotate_flip_method = ""

        response = @imaging_api.get_updated_image(file_name, format, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method)
		assert(response, message="Failed to perform scaling, cropping and flipping of an image in single request.")
	end
    
end