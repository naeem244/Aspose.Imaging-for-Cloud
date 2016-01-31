require "uri"

module AsposeImagingCloud
  class ImagingApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Update parameters of bmp image.
    # 
    # @param bits_per_pixel Color depth.
    # @param horizontal_resolution New horizontal resolution.
    # @param vertical_resolution New vertical resolution.
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_bmp(bits_per_pixel, horizontal_resolution, vertical_resolution, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_bmp ..."
      end
      
      # verify the required parameter 'bits_per_pixel' is set
      fail "Missing the required parameter 'bits_per_pixel' when calling post_image_bmp" if bits_per_pixel.nil?
      
      # verify the required parameter 'horizontal_resolution' is set
      fail "Missing the required parameter 'horizontal_resolution' when calling post_image_bmp" if horizontal_resolution.nil?
      
      # verify the required parameter 'vertical_resolution' is set
      fail "Missing the required parameter 'vertical_resolution' when calling post_image_bmp" if vertical_resolution.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_bmp" if file.nil?
      
      # resource path
      path = "/imaging/bmp".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'bitsPerPixel'] = bits_per_pixel
      query_params[:'horizontalResolution'] = horizontal_resolution
      query_params[:'verticalResolution'] = vertical_resolution
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_bmp. Result: #{result.inspect}"
      end
      return result
    end

    # Crop image from body
    # 
    # @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
    # @param x X position of start point for cropping rectangle
    # @param y Y position of start point for cropping rectangle
    # @param width Width of cropping rectangle
    # @param height Height of cropping rectangle
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_crop_image(format, x, y, width, height, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_crop_image ..."
      end
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling post_crop_image" if format.nil?
      
      # verify the required parameter 'x' is set
      fail "Missing the required parameter 'x' when calling post_crop_image" if x.nil?
      
      # verify the required parameter 'y' is set
      fail "Missing the required parameter 'y' when calling post_crop_image" if y.nil?
      
      # verify the required parameter 'width' is set
      fail "Missing the required parameter 'width' when calling post_crop_image" if width.nil?
      
      # verify the required parameter 'height' is set
      fail "Missing the required parameter 'height' when calling post_crop_image" if height.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_crop_image" if file.nil?
      
      # resource path
      path = "/imaging/crop".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'x'] = x
      query_params[:'y'] = y
      query_params[:'width'] = width
      query_params[:'height'] = height
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_crop_image. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of gif image.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :background_color_index Index of the background color.
    # @option opts [String] :color_resolution Color resolution.
    # @option opts [BOOLEAN] :has_trailer Specifies if image has trailer.
    # @option opts [BOOLEAN] :interlaced Specifies if image is interlaced.
    # @option opts [BOOLEAN] :is_palette_sorted Specifies if palette is sorted.
    # @option opts [String] :pixel_aspect_ratio Pixel aspect ratio.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_gif(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_gif ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_gif" if file.nil?
      
      # resource path
      path = "/imaging/gif".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'backgroundColorIndex'] = opts[:'background_color_index'] if opts[:'background_color_index']
      query_params[:'colorResolution'] = opts[:'color_resolution'] if opts[:'color_resolution']
      query_params[:'hasTrailer'] = opts[:'has_trailer'] if opts[:'has_trailer']
      query_params[:'interlaced'] = opts[:'interlaced'] if opts[:'interlaced']
      query_params[:'isPaletteSorted'] = opts[:'is_palette_sorted'] if opts[:'is_palette_sorted']
      query_params[:'pixelAspectRatio'] = opts[:'pixel_aspect_ratio'] if opts[:'pixel_aspect_ratio']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_gif. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of jpg image.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :quality Quality of image. From 0 to 100. Default is 75
    # @option opts [String] :compression_type Compression type.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_jpg(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_jpg ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_jpg" if file.nil?
      
      # resource path
      path = "/imaging/jpg".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'quality'] = opts[:'quality'] if opts[:'quality']
      query_params[:'compressionType'] = opts[:'compression_type'] if opts[:'compression_type']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_jpg. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of png image.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_png(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_png ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_png" if file.nil?
      
      # resource path
      path = "/imaging/png".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_png. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of psd image.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :channels_count Count of channels.
    # @option opts [String] :compression_method Compression method.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_psd(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_psd ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_psd" if file.nil?
      
      # resource path
      path = "/imaging/psd".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'channelsCount'] = opts[:'channels_count'] if opts[:'channels_count']
      query_params[:'compressionMethod'] = opts[:'compression_method'] if opts[:'compression_method']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_psd. Result: #{result.inspect}"
      end
      return result
    end

    # Change scale of an image from body
    # 
    # @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
    # @param new_width New width of the scaled image.
    # @param new_height New height of the scaled image.
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_change_image_scale(format, new_width, new_height, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_change_image_scale ..."
      end
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling post_change_image_scale" if format.nil?
      
      # verify the required parameter 'new_width' is set
      fail "Missing the required parameter 'new_width' when calling post_change_image_scale" if new_width.nil?
      
      # verify the required parameter 'new_height' is set
      fail "Missing the required parameter 'new_height' when calling post_change_image_scale" if new_height.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_change_image_scale" if file.nil?
      
      # resource path
      path = "/imaging/resize".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'newWidth'] = new_width
      query_params[:'newHeight'] = new_height
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_change_image_scale. Result: #{result.inspect}"
      end
      return result
    end

    # Rotate and flip existing image and get it from response.
    # 
    # @param format Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
    # @param method New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_rotate_flip(format, method, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_rotate_flip ..."
      end
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling post_image_rotate_flip" if format.nil?
      
      # verify the required parameter 'method' is set
      fail "Missing the required parameter 'method' when calling post_image_rotate_flip" if method.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_rotate_flip" if file.nil?
      
      # resource path
      path = "/imaging/rotateflip".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'method'] = method
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_rotate_flip. Result: #{result.inspect}"
      end
      return result
    end

    # Export existing image to another format. Image is passed as request body.
    # 
    # @param format Output file format. (Bmp, png, jpg, tiff, psd, gif.)
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_save_as(format, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_save_as ..."
      end
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling post_image_save_as" if format.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_save_as" if file.nil?
      
      # resource path
      path = "/imaging/saveAs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_save_as. Result: #{result.inspect}"
      end
      return result
    end

    # Update tiff image.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :compression New compression.
    # @option opts [String] :resolution_unit New resolution unit.
    # @option opts [Integer] :bit_depth New bit depth.
    # @option opts [BOOLEAN] :from_scratch 
    # @option opts [Float] :horizontal_resolution New horizontal resolution.
    # @option opts [Float] :vertical_resolution New verstical resolution.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def post_process_tiff(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_process_tiff ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_process_tiff" if file.nil?
      
      # resource path
      path = "/imaging/tiff".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'compression'] = opts[:'compression'] if opts[:'compression']
      query_params[:'resolutionUnit'] = opts[:'resolution_unit'] if opts[:'resolution_unit']
      query_params[:'bitDepth'] = opts[:'bit_depth'] if opts[:'bit_depth']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if opts[:'horizontal_resolution']
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if opts[:'vertical_resolution']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_process_tiff. Result: #{result.inspect}"
      end
      return result
    end

    # Append tiff image.
    # 
    # @param name Original image name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :append_file Second image file name.
    # @option opts [String] :storage The images storage.
    # @option opts [String] :folder The images folder.
    # @return [BaseResponse]
    def post_tiff_append(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_tiff_append ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_tiff_append" if name.nil?
      
      # resource path
      path = "/imaging/tiff/{name}/appendTiff".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'appendFile'] = opts[:'append_file'] if opts[:'append_file']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_tiff_append. Result: #{result.inspect}"
      end
      return result
    end

    # Get tiff image for fax.
    # 
    # @param name The image file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The image file storage.
    # @option opts [String] :folder The image file folder.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def get_tiff_to_fax(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_tiff_to_fax ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_tiff_to_fax" if name.nil?
      
      # resource path
      path = "/imaging/tiff/{name}/toFax".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_tiff_to_fax. Result: #{result.inspect}"
      end
      return result
    end

    # Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
    # 
    # @param format Save image in another format. By default format remains the same
    # @param new_width New Width of the scaled image.
    # @param new_height New height of the scaled image.
    # @param x X position of start point for cropping rectangle
    # @param y Y position of start point for cropping rectangle
    # @param rect_width Width of cropping rectangle
    # @param rect_height Height of cropping rectangle
    # @param rotate_flip_method RotateFlip method. Default is RotateNoneFlipNone.
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @return [File]
    def post_image_save_as_1(format, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#post_image_save_as_1 ..."
      end
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling post_image_save_as_1" if format.nil?
      
      # verify the required parameter 'new_width' is set
      fail "Missing the required parameter 'new_width' when calling post_image_save_as_1" if new_width.nil?
      
      # verify the required parameter 'new_height' is set
      fail "Missing the required parameter 'new_height' when calling post_image_save_as_1" if new_height.nil?
      
      # verify the required parameter 'x' is set
      fail "Missing the required parameter 'x' when calling post_image_save_as_1" if x.nil?
      
      # verify the required parameter 'y' is set
      fail "Missing the required parameter 'y' when calling post_image_save_as_1" if y.nil?
      
      # verify the required parameter 'rect_width' is set
      fail "Missing the required parameter 'rect_width' when calling post_image_save_as_1" if rect_width.nil?
      
      # verify the required parameter 'rect_height' is set
      fail "Missing the required parameter 'rect_height' when calling post_image_save_as_1" if rect_height.nil?
      
      # verify the required parameter 'rotate_flip_method' is set
      fail "Missing the required parameter 'rotate_flip_method' when calling post_image_save_as_1" if rotate_flip_method.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling post_image_save_as_1" if file.nil?
      
      # resource path
      path = "/imaging/updateImage".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'newWidth'] = new_width
      query_params[:'newHeight'] = new_height
      query_params[:'x'] = x
      query_params[:'y'] = y
      query_params[:'rectWidth'] = rect_width
      query_params[:'rectHeight'] = rect_height
      query_params[:'rotateFlipMethod'] = rotate_flip_method
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#post_image_save_as_1. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of bmp image.
    # 
    # @param name Filename of image.
    # @param bits_per_pixel Color depth.
    # @param horizontal_resolution New horizontal resolution.
    # @param vertical_resolution New vertical resolution.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_bmp(name, bits_per_pixel, horizontal_resolution, vertical_resolution, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_bmp ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_bmp" if name.nil?
      
      # verify the required parameter 'bits_per_pixel' is set
      fail "Missing the required parameter 'bits_per_pixel' when calling get_image_bmp" if bits_per_pixel.nil?
      
      # verify the required parameter 'horizontal_resolution' is set
      fail "Missing the required parameter 'horizontal_resolution' when calling get_image_bmp" if horizontal_resolution.nil?
      
      # verify the required parameter 'vertical_resolution' is set
      fail "Missing the required parameter 'vertical_resolution' when calling get_image_bmp" if vertical_resolution.nil?
      
      # resource path
      path = "/imaging/{name}/bmp".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'bitsPerPixel'] = bits_per_pixel
      query_params[:'horizontalResolution'] = horizontal_resolution
      query_params[:'verticalResolution'] = vertical_resolution
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_bmp. Result: #{result.inspect}"
      end
      return result
    end

    # Crop existing image
    # 
    # @param name The image name.
    # @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
    # @param x X position of start point for cropping rectangle
    # @param y Y position of start point for cropping rectangle
    # @param width Width of cropping rectangle
    # @param height Height of cropping rectangle
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_crop_image(name, format, x, y, width, height, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_crop_image ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_crop_image" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_crop_image" if format.nil?
      
      # verify the required parameter 'x' is set
      fail "Missing the required parameter 'x' when calling get_crop_image" if x.nil?
      
      # verify the required parameter 'y' is set
      fail "Missing the required parameter 'y' when calling get_crop_image" if y.nil?
      
      # verify the required parameter 'width' is set
      fail "Missing the required parameter 'width' when calling get_crop_image" if width.nil?
      
      # verify the required parameter 'height' is set
      fail "Missing the required parameter 'height' when calling get_crop_image" if height.nil?
      
      # resource path
      path = "/imaging/{name}/crop".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'x'] = x
      query_params[:'y'] = y
      query_params[:'width'] = width
      query_params[:'height'] = height
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_crop_image. Result: #{result.inspect}"
      end
      return result
    end

    # Get separate frame of tiff image
    # 
    # @param name Filename of image.
    # @param frame_id Number of frame.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :new_width New width of the scaled image.
    # @option opts [Integer] :new_height New height of the scaled image.
    # @option opts [Integer] :x X position of start point for cropping rectangle
    # @option opts [Integer] :y Y position of start point for cropping rectangle
    # @option opts [Integer] :rect_width Width of cropping rectangle
    # @option opts [Integer] :rect_height Height of cropping rectangle
    # @option opts [String] :rotate_flip_method RotateFlip method.(Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY. Default is RotateNoneFlipNone.)
    # @option opts [BOOLEAN] :save_other_frames Include all other frames or just specified frame in response.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_frame(name, frame_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_frame ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_frame" if name.nil?
      
      # verify the required parameter 'frame_id' is set
      fail "Missing the required parameter 'frame_id' when calling get_image_frame" if frame_id.nil?
      
      # resource path
      path = "/imaging/{name}/frames/{frameId}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'frameId' + '}', frame_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'newWidth'] = opts[:'new_width'] if opts[:'new_width']
      query_params[:'newHeight'] = opts[:'new_height'] if opts[:'new_height']
      query_params[:'x'] = opts[:'x'] if opts[:'x']
      query_params[:'y'] = opts[:'y'] if opts[:'y']
      query_params[:'rectWidth'] = opts[:'rect_width'] if opts[:'rect_width']
      query_params[:'rectHeight'] = opts[:'rect_height'] if opts[:'rect_height']
      query_params[:'rotateFlipMethod'] = opts[:'rotate_flip_method'] if opts[:'rotate_flip_method']
      query_params[:'saveOtherFrames'] = opts[:'save_other_frames'] if opts[:'save_other_frames']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_frame. Result: #{result.inspect}"
      end
      return result
    end

    # Get properties of a tiff frame.
    # 
    # @param name Filename with image.
    # @param frame_id Number of frame.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [ImagingResponse]
    def get_image_frame_properties(name, frame_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_frame_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_frame_properties" if name.nil?
      
      # verify the required parameter 'frame_id' is set
      fail "Missing the required parameter 'frame_id' when calling get_image_frame_properties" if frame_id.nil?
      
      # resource path
      path = "/imaging/{name}/frames/{frameId}/properties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'frameId' + '}', frame_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImagingResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_frame_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of bmp image.
    # 
    # @param name Filename of image.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :background_color_index Index of the background color.
    # @option opts [String] :color_resolution Color resolution.
    # @option opts [BOOLEAN] :has_trailer Specifies if image has trailer.
    # @option opts [BOOLEAN] :interlaced Specifies if image is interlaced.
    # @option opts [BOOLEAN] :is_palette_sorted Specifies if palette is sorted.
    # @option opts [String] :pixel_aspect_ratio Pixel aspect ratio.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_gif(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_gif ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_gif" if name.nil?
      
      # resource path
      path = "/imaging/{name}/gif".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'backgroundColorIndex'] = opts[:'background_color_index'] if opts[:'background_color_index']
      query_params[:'colorResolution'] = opts[:'color_resolution'] if opts[:'color_resolution']
      query_params[:'hasTrailer'] = opts[:'has_trailer'] if opts[:'has_trailer']
      query_params[:'interlaced'] = opts[:'interlaced'] if opts[:'interlaced']
      query_params[:'isPaletteSorted'] = opts[:'is_palette_sorted'] if opts[:'is_palette_sorted']
      query_params[:'pixelAspectRatio'] = opts[:'pixel_aspect_ratio'] if opts[:'pixel_aspect_ratio']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_gif. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of jpg image.
    # 
    # @param name Filename of image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :quality Quality of image. From 0 to 100. Default is 75
    # @option opts [String] :compression_type Compression type.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_jpg(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_jpg ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_jpg" if name.nil?
      
      # resource path
      path = "/imaging/{name}/jpg".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'quality'] = opts[:'quality'] if opts[:'quality']
      query_params[:'compressionType'] = opts[:'compression_type'] if opts[:'compression_type']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_jpg. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of png image.
    # 
    # @param name Filename of image.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_png(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_png ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_png" if name.nil?
      
      # resource path
      path = "/imaging/{name}/png".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_png. Result: #{result.inspect}"
      end
      return result
    end

    # Get properties of an image.
    # 
    # @param name The image name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [ImagingResponse]
    def get_image_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_properties" if name.nil?
      
      # resource path
      path = "/imaging/{name}/properties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImagingResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Update parameters of psd image.
    # 
    # @param name Filename of image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :channels_count Count of channels.
    # @option opts [String] :compression_method Compression method.
    # @option opts [BOOLEAN] :from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_psd(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_psd ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_psd" if name.nil?
      
      # resource path
      path = "/imaging/{name}/psd".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'channelsCount'] = opts[:'channels_count'] if opts[:'channels_count']
      query_params[:'compressionMethod'] = opts[:'compression_method'] if opts[:'compression_method']
      query_params[:'fromScratch'] = opts[:'from_scratch'] if opts[:'from_scratch']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_psd. Result: #{result.inspect}"
      end
      return result
    end

    # Change scale of an existing image
    # 
    # @param name The image name.
    # @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
    # @param new_width New width of the scaled image.
    # @param new_height New height of the scaled image.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_change_image_scale(name, format, new_width, new_height, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_change_image_scale ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_change_image_scale" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_change_image_scale" if format.nil?
      
      # verify the required parameter 'new_width' is set
      fail "Missing the required parameter 'new_width' when calling get_change_image_scale" if new_width.nil?
      
      # verify the required parameter 'new_height' is set
      fail "Missing the required parameter 'new_height' when calling get_change_image_scale" if new_height.nil?
      
      # resource path
      path = "/imaging/{name}/resize".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'newWidth'] = new_width
      query_params[:'newHeight'] = new_height
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_change_image_scale. Result: #{result.inspect}"
      end
      return result
    end

    # Rotate and flip existing image
    # 
    # @param name Filename of image.
    # @param format Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
    # @param method New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_rotate_flip(name, format, method, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_rotate_flip ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_rotate_flip" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_image_rotate_flip" if format.nil?
      
      # verify the required parameter 'method' is set
      fail "Missing the required parameter 'method' when calling get_image_rotate_flip" if method.nil?
      
      # resource path
      path = "/imaging/{name}/rotateflip".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'method'] = method
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_rotate_flip. Result: #{result.inspect}"
      end
      return result
    end

    # Export existing image to another format
    # 
    # @param name Filename of image.
    # @param format Output file format. (Bmp, png, jpg, tiff, psd, gif.)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_image_save_as(name, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_image_save_as ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_save_as" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_image_save_as" if format.nil?
      
      # resource path
      path = "/imaging/{name}/saveAs".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_image_save_as. Result: #{result.inspect}"
      end
      return result
    end

    # Perform scaling, cropping and flipping of an image in single request.
    # 
    # @param name Filename of image.
    # @param format Save image in another format. By default format remains the same
    # @param new_width New Width of the scaled image.
    # @param new_height New height of the scaled image.
    # @param x X position of start point for cropping rectangle
    # @param y Y position of start point for cropping rectangle
    # @param rect_width Width of cropping rectangle
    # @param rect_height Height of cropping rectangle
    # @param rotate_flip_method RotateFlip method. Default is RotateNoneFlipNone.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path Path to updated file, if this is empty, response contains streamed image.
    # @option opts [String] :folder Folder with image to process.
    # @option opts [String] :storage 
    # @return [File]
    def get_updated_image(name, format, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ImagingApi#get_updated_image ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_updated_image" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_updated_image" if format.nil?
      
      # verify the required parameter 'new_width' is set
      fail "Missing the required parameter 'new_width' when calling get_updated_image" if new_width.nil?
      
      # verify the required parameter 'new_height' is set
      fail "Missing the required parameter 'new_height' when calling get_updated_image" if new_height.nil?
      
      # verify the required parameter 'x' is set
      fail "Missing the required parameter 'x' when calling get_updated_image" if x.nil?
      
      # verify the required parameter 'y' is set
      fail "Missing the required parameter 'y' when calling get_updated_image" if y.nil?
      
      # verify the required parameter 'rect_width' is set
      fail "Missing the required parameter 'rect_width' when calling get_updated_image" if rect_width.nil?
      
      # verify the required parameter 'rect_height' is set
      fail "Missing the required parameter 'rect_height' when calling get_updated_image" if rect_height.nil?
      
      # verify the required parameter 'rotate_flip_method' is set
      fail "Missing the required parameter 'rotate_flip_method' when calling get_updated_image" if rotate_flip_method.nil?
      
      # resource path
      path = "/imaging/{name}/updateImage".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'newWidth'] = new_width
      query_params[:'newHeight'] = new_height
      query_params[:'x'] = x
      query_params[:'y'] = y
      query_params[:'rectWidth'] = rect_width
      query_params[:'rectHeight'] = rect_height
      query_params[:'rotateFlipMethod'] = rotate_flip_method
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ImagingApi#get_updated_image. Result: #{result.inspect}"
      end
      return result
    end
  end
end




