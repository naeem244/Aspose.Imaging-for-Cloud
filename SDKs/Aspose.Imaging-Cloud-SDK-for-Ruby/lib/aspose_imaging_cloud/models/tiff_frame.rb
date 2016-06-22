module AsposeImagingCloud
  # 
  class TiffFrame < BaseObject
    attr_accessor :frame_options, :height, :width, :exif_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'frame_options' => :'FrameOptions',
        
        # 
        :'height' => :'Height',
        
        # 
        :'width' => :'Width',
        
        # 
        :'exif_data' => :'ExifData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'frame_options' => :'TiffOptions',
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'exif_data' => :'ExifData'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FrameOptions']
        self.frame_options = attributes[:'FrameOptions']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'ExifData']
        self.exif_data = attributes[:'ExifData']
      end
      
    end

  end
end
