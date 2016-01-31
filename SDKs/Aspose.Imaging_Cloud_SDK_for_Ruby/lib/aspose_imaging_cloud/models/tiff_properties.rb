module AsposeImagingCloud
  # 
  class TiffProperties < BaseObject
    attr_accessor :frames, :byte_order, :exif_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'frames' => :'Frames',
        
        # 
        :'byte_order' => :'ByteOrder',
        
        # 
        :'exif_data' => :'ExifData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'frames' => :'Array<TiffFrame>',
        :'byte_order' => :'String',
        :'exif_data' => :'ExifData'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Frames']
        if (value = attributes[:'Frames']).is_a?(Array)
          self.frames = value
        end
      end
      
      if attributes[:'ByteOrder']
        self.byte_order = attributes[:'ByteOrder']
      end
      
      if attributes[:'ExifData']
        self.exif_data = attributes[:'ExifData']
      end
      
    end

  end
end
