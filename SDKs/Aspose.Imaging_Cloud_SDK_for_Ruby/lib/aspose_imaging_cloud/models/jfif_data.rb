module AsposeImagingCloud
  # 
  class JfifData < BaseObject
    attr_accessor :density_units, :version, :x_density, :y_density
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'density_units' => :'DensityUnits',
        
        # 
        :'version' => :'Version',
        
        # 
        :'x_density' => :'XDensity',
        
        # 
        :'y_density' => :'YDensity'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'density_units' => :'String',
        :'version' => :'Integer',
        :'x_density' => :'Integer',
        :'y_density' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DensityUnits']
        self.density_units = attributes[:'DensityUnits']
      end
      
      if attributes[:'Version']
        self.version = attributes[:'Version']
      end
      
      if attributes[:'XDensity']
        self.x_density = attributes[:'XDensity']
      end
      
      if attributes[:'YDensity']
        self.y_density = attributes[:'YDensity']
      end
      
    end

  end
end
