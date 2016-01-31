module AsposeImagingCloud
  # 
  class GifProperties < BaseObject
    attr_accessor :background_color, :has_trailer, :pixel_aspect_ratio
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'background_color' => :'BackgroundColor',
        
        # 
        :'has_trailer' => :'HasTrailer',
        
        # 
        :'pixel_aspect_ratio' => :'PixelAspectRatio'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'background_color' => :'String',
        :'has_trailer' => :'BOOLEAN',
        :'pixel_aspect_ratio' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'BackgroundColor']
        self.background_color = attributes[:'BackgroundColor']
      end
      
      if attributes[:'HasTrailer']
        self.has_trailer = attributes[:'HasTrailer']
      end
      
      if attributes[:'PixelAspectRatio']
        self.pixel_aspect_ratio = attributes[:'PixelAspectRatio']
      end
      
    end

  end
end
