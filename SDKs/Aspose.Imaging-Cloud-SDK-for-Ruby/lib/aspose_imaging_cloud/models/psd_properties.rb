module AsposeImagingCloud
  # 
  class PsdProperties < BaseObject
    attr_accessor :bits_per_channel, :channels_count, :color_mode, :compression
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'bits_per_channel' => :'BitsPerChannel',
        
        # 
        :'channels_count' => :'ChannelsCount',
        
        # 
        :'color_mode' => :'ColorMode',
        
        # 
        :'compression' => :'Compression'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'bits_per_channel' => :'Integer',
        :'channels_count' => :'Integer',
        :'color_mode' => :'String',
        :'compression' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'BitsPerChannel']
        self.bits_per_channel = attributes[:'BitsPerChannel']
      end
      
      if attributes[:'ChannelsCount']
        self.channels_count = attributes[:'ChannelsCount']
      end
      
      if attributes[:'ColorMode']
        self.color_mode = attributes[:'ColorMode']
      end
      
      if attributes[:'Compression']
        self.compression = attributes[:'Compression']
      end
      
    end

  end
end
