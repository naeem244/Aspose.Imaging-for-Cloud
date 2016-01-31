module AsposeImagingCloud
  # 
  class TiffOptions < BaseObject
    attr_accessor :is_valid, :artist, :byte_order, :bits_per_sample, :compression, :copyright, :color_map, :date_time, :document_name, :alpha_storage, :fill_order, :half_tone_hints, :image_description, :ink_names, :scanner_manufacturer, :max_sample_value, :min_sample_value, :scanner_model, :page_name, :orientation, :page_number, :photometric, :planar_configuration, :resolution_unit, :rows_per_strip, :sample_format, :samples_per_pixel, :smax_sample_value, :smin_sample_value, :software_type, :strip_byte_counts, :strip_offsets, :sub_file_type, :target_printer, :threshholding, :total_pages, :xposition, :xresolution, :yposition, :yresolution, :fax_t4_options, :predictor, :image_length, :image_width, :valid_tag_count, :bits_per_pixel
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'is_valid' => :'IsValid',
        
        # 
        :'artist' => :'Artist',
        
        # 
        :'byte_order' => :'ByteOrder',
        
        # 
        :'bits_per_sample' => :'BitsPerSample',
        
        # 
        :'compression' => :'Compression',
        
        # 
        :'copyright' => :'Copyright',
        
        # 
        :'color_map' => :'ColorMap',
        
        # 
        :'date_time' => :'DateTime',
        
        # 
        :'document_name' => :'DocumentName',
        
        # 
        :'alpha_storage' => :'AlphaStorage',
        
        # 
        :'fill_order' => :'FillOrder',
        
        # 
        :'half_tone_hints' => :'HalfToneHints',
        
        # 
        :'image_description' => :'ImageDescription',
        
        # 
        :'ink_names' => :'InkNames',
        
        # 
        :'scanner_manufacturer' => :'ScannerManufacturer',
        
        # 
        :'max_sample_value' => :'MaxSampleValue',
        
        # 
        :'min_sample_value' => :'MinSampleValue',
        
        # 
        :'scanner_model' => :'ScannerModel',
        
        # 
        :'page_name' => :'PageName',
        
        # 
        :'orientation' => :'Orientation',
        
        # 
        :'page_number' => :'PageNumber',
        
        # 
        :'photometric' => :'Photometric',
        
        # 
        :'planar_configuration' => :'PlanarConfiguration',
        
        # 
        :'resolution_unit' => :'ResolutionUnit',
        
        # 
        :'rows_per_strip' => :'RowsPerStrip',
        
        # 
        :'sample_format' => :'SampleFormat',
        
        # 
        :'samples_per_pixel' => :'SamplesPerPixel',
        
        # 
        :'smax_sample_value' => :'SmaxSampleValue',
        
        # 
        :'smin_sample_value' => :'SminSampleValue',
        
        # 
        :'software_type' => :'SoftwareType',
        
        # 
        :'strip_byte_counts' => :'StripByteCounts',
        
        # 
        :'strip_offsets' => :'StripOffsets',
        
        # 
        :'sub_file_type' => :'SubFileType',
        
        # 
        :'target_printer' => :'TargetPrinter',
        
        # 
        :'threshholding' => :'Threshholding',
        
        # 
        :'total_pages' => :'TotalPages',
        
        # 
        :'xposition' => :'Xposition',
        
        # 
        :'xresolution' => :'Xresolution',
        
        # 
        :'yposition' => :'Yposition',
        
        # 
        :'yresolution' => :'Yresolution',
        
        # 
        :'fax_t4_options' => :'FaxT4Options',
        
        # 
        :'predictor' => :'Predictor',
        
        # 
        :'image_length' => :'ImageLength',
        
        # 
        :'image_width' => :'ImageWidth',
        
        # 
        :'valid_tag_count' => :'ValidTagCount',
        
        # 
        :'bits_per_pixel' => :'BitsPerPixel'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'is_valid' => :'BOOLEAN',
        :'artist' => :'String',
        :'byte_order' => :'String',
        :'bits_per_sample' => :'Array<Integer>',
        :'compression' => :'String',
        :'copyright' => :'String',
        :'color_map' => :'Array<Integer>',
        :'date_time' => :'String',
        :'document_name' => :'String',
        :'alpha_storage' => :'String',
        :'fill_order' => :'String',
        :'half_tone_hints' => :'Array<Integer>',
        :'image_description' => :'String',
        :'ink_names' => :'String',
        :'scanner_manufacturer' => :'String',
        :'max_sample_value' => :'Array<Integer>',
        :'min_sample_value' => :'Array<Integer>',
        :'scanner_model' => :'String',
        :'page_name' => :'String',
        :'orientation' => :'String',
        :'page_number' => :'Array<Integer>',
        :'photometric' => :'String',
        :'planar_configuration' => :'String',
        :'resolution_unit' => :'String',
        :'rows_per_strip' => :'Integer',
        :'sample_format' => :'Array<String>',
        :'samples_per_pixel' => :'Integer',
        :'smax_sample_value' => :'Array<Integer>',
        :'smin_sample_value' => :'Array<Integer>',
        :'software_type' => :'String',
        :'strip_byte_counts' => :'Array<Integer>',
        :'strip_offsets' => :'Array<Integer>',
        :'sub_file_type' => :'String',
        :'target_printer' => :'String',
        :'threshholding' => :'String',
        :'total_pages' => :'Integer',
        :'xposition' => :'Float',
        :'xresolution' => :'Float',
        :'yposition' => :'Float',
        :'yresolution' => :'Float',
        :'fax_t4_options' => :'String',
        :'predictor' => :'String',
        :'image_length' => :'Integer',
        :'image_width' => :'Integer',
        :'valid_tag_count' => :'Integer',
        :'bits_per_pixel' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'IsValid']
        self.is_valid = attributes[:'IsValid']
      end
      
      if attributes[:'Artist']
        self.artist = attributes[:'Artist']
      end
      
      if attributes[:'ByteOrder']
        self.byte_order = attributes[:'ByteOrder']
      end
      
      if attributes[:'BitsPerSample']
        if (value = attributes[:'BitsPerSample']).is_a?(Array)
          self.bits_per_sample = value
        end
      end
      
      if attributes[:'Compression']
        self.compression = attributes[:'Compression']
      end
      
      if attributes[:'Copyright']
        self.copyright = attributes[:'Copyright']
      end
      
      if attributes[:'ColorMap']
        if (value = attributes[:'ColorMap']).is_a?(Array)
          self.color_map = value
        end
      end
      
      if attributes[:'DateTime']
        self.date_time = attributes[:'DateTime']
      end
      
      if attributes[:'DocumentName']
        self.document_name = attributes[:'DocumentName']
      end
      
      if attributes[:'AlphaStorage']
        self.alpha_storage = attributes[:'AlphaStorage']
      end
      
      if attributes[:'FillOrder']
        self.fill_order = attributes[:'FillOrder']
      end
      
      if attributes[:'HalfToneHints']
        if (value = attributes[:'HalfToneHints']).is_a?(Array)
          self.half_tone_hints = value
        end
      end
      
      if attributes[:'ImageDescription']
        self.image_description = attributes[:'ImageDescription']
      end
      
      if attributes[:'InkNames']
        self.ink_names = attributes[:'InkNames']
      end
      
      if attributes[:'ScannerManufacturer']
        self.scanner_manufacturer = attributes[:'ScannerManufacturer']
      end
      
      if attributes[:'MaxSampleValue']
        if (value = attributes[:'MaxSampleValue']).is_a?(Array)
          self.max_sample_value = value
        end
      end
      
      if attributes[:'MinSampleValue']
        if (value = attributes[:'MinSampleValue']).is_a?(Array)
          self.min_sample_value = value
        end
      end
      
      if attributes[:'ScannerModel']
        self.scanner_model = attributes[:'ScannerModel']
      end
      
      if attributes[:'PageName']
        self.page_name = attributes[:'PageName']
      end
      
      if attributes[:'Orientation']
        self.orientation = attributes[:'Orientation']
      end
      
      if attributes[:'PageNumber']
        if (value = attributes[:'PageNumber']).is_a?(Array)
          self.page_number = value
        end
      end
      
      if attributes[:'Photometric']
        self.photometric = attributes[:'Photometric']
      end
      
      if attributes[:'PlanarConfiguration']
        self.planar_configuration = attributes[:'PlanarConfiguration']
      end
      
      if attributes[:'ResolutionUnit']
        self.resolution_unit = attributes[:'ResolutionUnit']
      end
      
      if attributes[:'RowsPerStrip']
        self.rows_per_strip = attributes[:'RowsPerStrip']
      end
      
      if attributes[:'SampleFormat']
        if (value = attributes[:'SampleFormat']).is_a?(Array)
          self.sample_format = value
        end
      end
      
      if attributes[:'SamplesPerPixel']
        self.samples_per_pixel = attributes[:'SamplesPerPixel']
      end
      
      if attributes[:'SmaxSampleValue']
        if (value = attributes[:'SmaxSampleValue']).is_a?(Array)
          self.smax_sample_value = value
        end
      end
      
      if attributes[:'SminSampleValue']
        if (value = attributes[:'SminSampleValue']).is_a?(Array)
          self.smin_sample_value = value
        end
      end
      
      if attributes[:'SoftwareType']
        self.software_type = attributes[:'SoftwareType']
      end
      
      if attributes[:'StripByteCounts']
        if (value = attributes[:'StripByteCounts']).is_a?(Array)
          self.strip_byte_counts = value
        end
      end
      
      if attributes[:'StripOffsets']
        if (value = attributes[:'StripOffsets']).is_a?(Array)
          self.strip_offsets = value
        end
      end
      
      if attributes[:'SubFileType']
        self.sub_file_type = attributes[:'SubFileType']
      end
      
      if attributes[:'TargetPrinter']
        self.target_printer = attributes[:'TargetPrinter']
      end
      
      if attributes[:'Threshholding']
        self.threshholding = attributes[:'Threshholding']
      end
      
      if attributes[:'TotalPages']
        self.total_pages = attributes[:'TotalPages']
      end
      
      if attributes[:'Xposition']
        self.xposition = attributes[:'Xposition']
      end
      
      if attributes[:'Xresolution']
        self.xresolution = attributes[:'Xresolution']
      end
      
      if attributes[:'Yposition']
        self.yposition = attributes[:'Yposition']
      end
      
      if attributes[:'Yresolution']
        self.yresolution = attributes[:'Yresolution']
      end
      
      if attributes[:'FaxT4Options']
        self.fax_t4_options = attributes[:'FaxT4Options']
      end
      
      if attributes[:'Predictor']
        self.predictor = attributes[:'Predictor']
      end
      
      if attributes[:'ImageLength']
        self.image_length = attributes[:'ImageLength']
      end
      
      if attributes[:'ImageWidth']
        self.image_width = attributes[:'ImageWidth']
      end
      
      if attributes[:'ValidTagCount']
        self.valid_tag_count = attributes[:'ValidTagCount']
      end
      
      if attributes[:'BitsPerPixel']
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end
      
    end

  end
end
