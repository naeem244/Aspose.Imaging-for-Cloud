module AsposeImagingCloud
  # 
  class JpegProperties < BaseObject
    attr_accessor :comment, :jpeg_exif_data, :jpeg_jfif_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'comment' => :'Comment',
        
        # 
        :'jpeg_exif_data' => :'JpegExifData',
        
        # 
        :'jpeg_jfif_data' => :'JpegJfifData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'comment' => :'String',
        :'jpeg_exif_data' => :'JpegExifData',
        :'jpeg_jfif_data' => :'JfifData'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Comment']
        self.comment = attributes[:'Comment']
      end
      
      if attributes[:'JpegExifData']
        self.jpeg_exif_data = attributes[:'JpegExifData']
      end
      
      if attributes[:'JpegJfifData']
        self.jpeg_jfif_data = attributes[:'JpegJfifData']
      end
      
    end

  end
end
