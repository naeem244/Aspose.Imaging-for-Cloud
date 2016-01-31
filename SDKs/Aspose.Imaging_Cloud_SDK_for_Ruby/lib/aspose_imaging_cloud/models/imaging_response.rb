module AsposeImagingCloud
  # 
  class ImagingResponse < BaseObject
    attr_accessor :height, :width, :bits_per_pixel, :bmp_properties, :gif_properties, :jpeg_properties, :png_properties, :tiff_properties, :psd_properties, :horizontal_resolution, :vertical_resolution, :is_cached, :status, :code
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'height' => :'Height',
        
        # 
        :'width' => :'Width',
        
        # 
        :'bits_per_pixel' => :'BitsPerPixel',
        
        # 
        :'bmp_properties' => :'BmpProperties',
        
        # 
        :'gif_properties' => :'GifProperties',
        
        # 
        :'jpeg_properties' => :'JpegProperties',
        
        # 
        :'png_properties' => :'PngProperties',
        
        # 
        :'tiff_properties' => :'TiffProperties',
        
        # 
        :'psd_properties' => :'PsdProperties',
        
        # 
        :'horizontal_resolution' => :'HorizontalResolution',
        
        # 
        :'vertical_resolution' => :'VerticalResolution',
        
        # 
        :'is_cached' => :'IsCached',
        
        # 
        :'status' => :'Status',
        
        # 
        :'code' => :'Code'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'bits_per_pixel' => :'Integer',
        :'bmp_properties' => :'BmpProperties',
        :'gif_properties' => :'GifProperties',
        :'jpeg_properties' => :'JpegProperties',
        :'png_properties' => :'PngProperties',
        :'tiff_properties' => :'TiffProperties',
        :'psd_properties' => :'PsdProperties',
        :'horizontal_resolution' => :'Float',
        :'vertical_resolution' => :'Float',
        :'is_cached' => :'BOOLEAN',
        :'status' => :'String',
        :'code' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'BitsPerPixel']
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end
      
      if attributes[:'BmpProperties']
        self.bmp_properties = attributes[:'BmpProperties']
      end
      
      if attributes[:'GifProperties']
        self.gif_properties = attributes[:'GifProperties']
      end
      
      if attributes[:'JpegProperties']
        self.jpeg_properties = attributes[:'JpegProperties']
      end
      
      if attributes[:'PngProperties']
        self.png_properties = attributes[:'PngProperties']
      end
      
      if attributes[:'TiffProperties']
        self.tiff_properties = attributes[:'TiffProperties']
      end
      
      if attributes[:'PsdProperties']
        self.psd_properties = attributes[:'PsdProperties']
      end
      
      if attributes[:'HorizontalResolution']
        self.horizontal_resolution = attributes[:'HorizontalResolution']
      end
      
      if attributes[:'VerticalResolution']
        self.vertical_resolution = attributes[:'VerticalResolution']
      end
      
      if attributes[:'IsCached']
        self.is_cached = attributes[:'IsCached']
      end
      
      if attributes[:'Status']
        self.status = attributes[:'Status']
      end
      
      if attributes[:'Code']
        self.code = attributes[:'Code']
      end
      
    end

    def status=(status)
      allowed_values = ["Continue", "SwitchingProtocols", "OK", "Created", "Accepted", "NonAuthoritativeInformation", "NoContent", "ResetContent", "PartialContent", "MultipleChoices", "Ambiguous", "MovedPermanently", "Moved", "Found", "Redirect", "SeeOther", "RedirectMethod", "NotModified", "UseProxy", "Unused", "TemporaryRedirect", "RedirectKeepVerb", "BadRequest", "Unauthorized", "PaymentRequired", "Forbidden", "NotFound", "MethodNotAllowed", "NotAcceptable", "ProxyAuthenticationRequired", "RequestTimeout", "Conflict", "Gone", "LengthRequired", "PreconditionFailed", "RequestEntityTooLarge", "RequestUriTooLong", "UnsupportedMediaType", "RequestedRangeNotSatisfiable", "ExpectationFailed", "UpgradeRequired", "InternalServerError", "NotImplemented", "BadGateway", "ServiceUnavailable", "GatewayTimeout", "HttpVersionNotSupported"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end
