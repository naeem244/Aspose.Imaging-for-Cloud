module AsposeImagingCloud
  # 
  class ExifData < BaseObject
    attr_accessor :aperture_value, :body_serial_number, :brightness_value, :cfa_pattern, :camera_owner_name, :color_space, :components_configuration, :compressed_bits_per_pixel, :contrast, :custom_rendered, :date_time_digitized, :date_time_original, :device_setting_description, :digital_zoom_ratio, :exif_version, :exposure_bias_value, :exposure_index, :exposure_mode, :exposure_program, :exposure_time, :f_number, :file_source, :flash, :flash_energy, :flashpix_version, :focal_length, :focal_length_in35_mm_film, :focal_plane_resolution_unit, :focal_plane_x_resolution, :focal_plane_y_resolution, :gps_altitude, :gps_altitude_ref, :gps_area_information, :gpsdop, :gps_dest_bearing, :gps_dest_bearing_ref, :gps_dest_distance, :gps_dest_distance_ref, :gps_dest_latitude, :gps_dest_latitude_ref, :gps_dest_longitude, :gps_dest_longitude_ref, :gps_differential, :gps_img_direction, :gps_img_direction_ref, :gps_date_stamp, :gps_latitude, :gps_latitude_ref, :gps_longitude, :gps_longitude_ref, :gps_map_datum, :gps_measure_mode, :gps_processing_method, :gps_satellites, :gps_speed, :gps_speed_ref, :gps_status, :gps_timestamp, :gps_track, :gps_track_ref, :gps_version_id, :gain_control, :gamma, :iso_speed, :iso_speed_latitude_yyy, :iso_speed_latitude_zzz, :photographic_sensitivity, :image_unique_id, :lens_make, :lens_model, :lens_serial_number, :lens_specification, :light_source, :maker_note_raw_data, :max_aperture_value, :metering_mode, :oecf, :pixel_x_dimension, :pixel_y_dimension, :recommended_exposure_index, :related_sound_file, :saturation, :scene_capture_type, :scene_type, :sensing_method, :sensitivity_type, :sharpness, :shutter_speed_value, :spatial_frequency_response, :spectral_sensitivity, :standard_output_sensitivity, :subject_area, :subject_distance, :subject_distance_range, :subject_location, :subsec_time, :subsec_time_digitized, :subsec_time_original, :user_comment, :white_balance, :white_point
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'aperture_value' => :'ApertureValue',
        
        # 
        :'body_serial_number' => :'BodySerialNumber',
        
        # 
        :'brightness_value' => :'BrightnessValue',
        
        # 
        :'cfa_pattern' => :'CFAPattern',
        
        # 
        :'camera_owner_name' => :'CameraOwnerName',
        
        # 
        :'color_space' => :'ColorSpace',
        
        # 
        :'components_configuration' => :'ComponentsConfiguration',
        
        # 
        :'compressed_bits_per_pixel' => :'CompressedBitsPerPixel',
        
        # 
        :'contrast' => :'Contrast',
        
        # 
        :'custom_rendered' => :'CustomRendered',
        
        # 
        :'date_time_digitized' => :'DateTimeDigitized',
        
        # 
        :'date_time_original' => :'DateTimeOriginal',
        
        # 
        :'device_setting_description' => :'DeviceSettingDescription',
        
        # 
        :'digital_zoom_ratio' => :'DigitalZoomRatio',
        
        # 
        :'exif_version' => :'ExifVersion',
        
        # 
        :'exposure_bias_value' => :'ExposureBiasValue',
        
        # 
        :'exposure_index' => :'ExposureIndex',
        
        # 
        :'exposure_mode' => :'ExposureMode',
        
        # 
        :'exposure_program' => :'ExposureProgram',
        
        # 
        :'exposure_time' => :'ExposureTime',
        
        # 
        :'f_number' => :'FNumber',
        
        # 
        :'file_source' => :'FileSource',
        
        # 
        :'flash' => :'Flash',
        
        # 
        :'flash_energy' => :'FlashEnergy',
        
        # 
        :'flashpix_version' => :'FlashpixVersion',
        
        # 
        :'focal_length' => :'FocalLength',
        
        # 
        :'focal_length_in35_mm_film' => :'FocalLengthIn35MmFilm',
        
        # 
        :'focal_plane_resolution_unit' => :'FocalPlaneResolutionUnit',
        
        # 
        :'focal_plane_x_resolution' => :'FocalPlaneXResolution',
        
        # 
        :'focal_plane_y_resolution' => :'FocalPlaneYResolution',
        
        # 
        :'gps_altitude' => :'GPSAltitude',
        
        # 
        :'gps_altitude_ref' => :'GPSAltitudeRef',
        
        # 
        :'gps_area_information' => :'GPSAreaInformation',
        
        # 
        :'gpsdop' => :'GPSDOP',
        
        # 
        :'gps_dest_bearing' => :'GPSDestBearing',
        
        # 
        :'gps_dest_bearing_ref' => :'GPSDestBearingRef',
        
        # 
        :'gps_dest_distance' => :'GPSDestDistance',
        
        # 
        :'gps_dest_distance_ref' => :'GPSDestDistanceRef',
        
        # 
        :'gps_dest_latitude' => :'GPSDestLatitude',
        
        # 
        :'gps_dest_latitude_ref' => :'GPSDestLatitudeRef',
        
        # 
        :'gps_dest_longitude' => :'GPSDestLongitude',
        
        # 
        :'gps_dest_longitude_ref' => :'GPSDestLongitudeRef',
        
        # 
        :'gps_differential' => :'GPSDifferential',
        
        # 
        :'gps_img_direction' => :'GPSImgDirection',
        
        # 
        :'gps_img_direction_ref' => :'GPSImgDirectionRef',
        
        # 
        :'gps_date_stamp' => :'GPSDateStamp',
        
        # 
        :'gps_latitude' => :'GPSLatitude',
        
        # 
        :'gps_latitude_ref' => :'GPSLatitudeRef',
        
        # 
        :'gps_longitude' => :'GPSLongitude',
        
        # 
        :'gps_longitude_ref' => :'GPSLongitudeRef',
        
        # 
        :'gps_map_datum' => :'GPSMapDatum',
        
        # 
        :'gps_measure_mode' => :'GPSMeasureMode',
        
        # 
        :'gps_processing_method' => :'GPSProcessingMethod',
        
        # 
        :'gps_satellites' => :'GPSSatellites',
        
        # 
        :'gps_speed' => :'GPSSpeed',
        
        # 
        :'gps_speed_ref' => :'GPSSpeedRef',
        
        # 
        :'gps_status' => :'GPSStatus',
        
        # 
        :'gps_timestamp' => :'GPSTimestamp',
        
        # 
        :'gps_track' => :'GPSTrack',
        
        # 
        :'gps_track_ref' => :'GPSTrackRef',
        
        # 
        :'gps_version_id' => :'GPSVersionID',
        
        # 
        :'gain_control' => :'GainControl',
        
        # 
        :'gamma' => :'Gamma',
        
        # 
        :'iso_speed' => :'ISOSpeed',
        
        # 
        :'iso_speed_latitude_yyy' => :'ISOSpeedLatitudeYYY',
        
        # 
        :'iso_speed_latitude_zzz' => :'ISOSpeedLatitudeZZZ',
        
        # 
        :'photographic_sensitivity' => :'PhotographicSensitivity',
        
        # 
        :'image_unique_id' => :'ImageUniqueID',
        
        # 
        :'lens_make' => :'LensMake',
        
        # 
        :'lens_model' => :'LensModel',
        
        # 
        :'lens_serial_number' => :'LensSerialNumber',
        
        # 
        :'lens_specification' => :'LensSpecification',
        
        # 
        :'light_source' => :'LightSource',
        
        # 
        :'maker_note_raw_data' => :'MakerNoteRawData',
        
        # 
        :'max_aperture_value' => :'MaxApertureValue',
        
        # 
        :'metering_mode' => :'MeteringMode',
        
        # 
        :'oecf' => :'OECF',
        
        # 
        :'pixel_x_dimension' => :'PixelXDimension',
        
        # 
        :'pixel_y_dimension' => :'PixelYDimension',
        
        # 
        :'recommended_exposure_index' => :'RecommendedExposureIndex',
        
        # 
        :'related_sound_file' => :'RelatedSoundFile',
        
        # 
        :'saturation' => :'Saturation',
        
        # 
        :'scene_capture_type' => :'SceneCaptureType',
        
        # 
        :'scene_type' => :'SceneType',
        
        # 
        :'sensing_method' => :'SensingMethod',
        
        # 
        :'sensitivity_type' => :'SensitivityType',
        
        # 
        :'sharpness' => :'Sharpness',
        
        # 
        :'shutter_speed_value' => :'ShutterSpeedValue',
        
        # 
        :'spatial_frequency_response' => :'SpatialFrequencyResponse',
        
        # 
        :'spectral_sensitivity' => :'SpectralSensitivity',
        
        # 
        :'standard_output_sensitivity' => :'StandardOutputSensitivity',
        
        # 
        :'subject_area' => :'SubjectArea',
        
        # 
        :'subject_distance' => :'SubjectDistance',
        
        # 
        :'subject_distance_range' => :'SubjectDistanceRange',
        
        # 
        :'subject_location' => :'SubjectLocation',
        
        # 
        :'subsec_time' => :'SubsecTime',
        
        # 
        :'subsec_time_digitized' => :'SubsecTimeDigitized',
        
        # 
        :'subsec_time_original' => :'SubsecTimeOriginal',
        
        # 
        :'user_comment' => :'UserComment',
        
        # 
        :'white_balance' => :'WhiteBalance',
        
        # 
        :'white_point' => :'WhitePoint'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'aperture_value' => :'Float',
        :'body_serial_number' => :'String',
        :'brightness_value' => :'Float',
        :'cfa_pattern' => :'String',
        :'camera_owner_name' => :'String',
        :'color_space' => :'String',
        :'components_configuration' => :'String',
        :'compressed_bits_per_pixel' => :'Float',
        :'contrast' => :'String',
        :'custom_rendered' => :'String',
        :'date_time_digitized' => :'String',
        :'date_time_original' => :'String',
        :'device_setting_description' => :'String',
        :'digital_zoom_ratio' => :'Float',
        :'exif_version' => :'String',
        :'exposure_bias_value' => :'Float',
        :'exposure_index' => :'Float',
        :'exposure_mode' => :'String',
        :'exposure_program' => :'String',
        :'exposure_time' => :'Float',
        :'f_number' => :'Float',
        :'file_source' => :'String',
        :'flash' => :'String',
        :'flash_energy' => :'Float',
        :'flashpix_version' => :'String',
        :'focal_length' => :'Float',
        :'focal_length_in35_mm_film' => :'Integer',
        :'focal_plane_resolution_unit' => :'String',
        :'focal_plane_x_resolution' => :'Float',
        :'focal_plane_y_resolution' => :'Float',
        :'gps_altitude' => :'Float',
        :'gps_altitude_ref' => :'String',
        :'gps_area_information' => :'String',
        :'gpsdop' => :'Float',
        :'gps_dest_bearing' => :'Float',
        :'gps_dest_bearing_ref' => :'String',
        :'gps_dest_distance' => :'Float',
        :'gps_dest_distance_ref' => :'String',
        :'gps_dest_latitude' => :'Array<Float>',
        :'gps_dest_latitude_ref' => :'String',
        :'gps_dest_longitude' => :'Array<Float>',
        :'gps_dest_longitude_ref' => :'String',
        :'gps_differential' => :'Integer',
        :'gps_img_direction' => :'Float',
        :'gps_img_direction_ref' => :'String',
        :'gps_date_stamp' => :'String',
        :'gps_latitude' => :'Array<Float>',
        :'gps_latitude_ref' => :'String',
        :'gps_longitude' => :'Array<Float>',
        :'gps_longitude_ref' => :'String',
        :'gps_map_datum' => :'String',
        :'gps_measure_mode' => :'String',
        :'gps_processing_method' => :'String',
        :'gps_satellites' => :'String',
        :'gps_speed' => :'Float',
        :'gps_speed_ref' => :'String',
        :'gps_status' => :'String',
        :'gps_timestamp' => :'Array<Float>',
        :'gps_track' => :'String',
        :'gps_track_ref' => :'String',
        :'gps_version_id' => :'String',
        :'gain_control' => :'String',
        :'gamma' => :'Float',
        :'iso_speed' => :'Integer',
        :'iso_speed_latitude_yyy' => :'Integer',
        :'iso_speed_latitude_zzz' => :'Integer',
        :'photographic_sensitivity' => :'Integer',
        :'image_unique_id' => :'String',
        :'lens_make' => :'String',
        :'lens_model' => :'String',
        :'lens_serial_number' => :'String',
        :'lens_specification' => :'Array<Float>',
        :'light_source' => :'String',
        :'maker_note_raw_data' => :'String',
        :'max_aperture_value' => :'Float',
        :'metering_mode' => :'String',
        :'oecf' => :'String',
        :'pixel_x_dimension' => :'Integer',
        :'pixel_y_dimension' => :'Integer',
        :'recommended_exposure_index' => :'Integer',
        :'related_sound_file' => :'String',
        :'saturation' => :'String',
        :'scene_capture_type' => :'String',
        :'scene_type' => :'String',
        :'sensing_method' => :'String',
        :'sensitivity_type' => :'Integer',
        :'sharpness' => :'Integer',
        :'shutter_speed_value' => :'Float',
        :'spatial_frequency_response' => :'String',
        :'spectral_sensitivity' => :'String',
        :'standard_output_sensitivity' => :'Integer',
        :'subject_area' => :'Array<Integer>',
        :'subject_distance' => :'Float',
        :'subject_distance_range' => :'String',
        :'subject_location' => :'Array<Integer>',
        :'subsec_time' => :'String',
        :'subsec_time_digitized' => :'String',
        :'subsec_time_original' => :'String',
        :'user_comment' => :'String',
        :'white_balance' => :'String',
        :'white_point' => :'Array<Float>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ApertureValue']
        self.aperture_value = attributes[:'ApertureValue']
      end
      
      if attributes[:'BodySerialNumber']
        self.body_serial_number = attributes[:'BodySerialNumber']
      end
      
      if attributes[:'BrightnessValue']
        self.brightness_value = attributes[:'BrightnessValue']
      end
      
      if attributes[:'CFAPattern']
        self.cfa_pattern = attributes[:'CFAPattern']
      end
      
      if attributes[:'CameraOwnerName']
        self.camera_owner_name = attributes[:'CameraOwnerName']
      end
      
      if attributes[:'ColorSpace']
        self.color_space = attributes[:'ColorSpace']
      end
      
      if attributes[:'ComponentsConfiguration']
        self.components_configuration = attributes[:'ComponentsConfiguration']
      end
      
      if attributes[:'CompressedBitsPerPixel']
        self.compressed_bits_per_pixel = attributes[:'CompressedBitsPerPixel']
      end
      
      if attributes[:'Contrast']
        self.contrast = attributes[:'Contrast']
      end
      
      if attributes[:'CustomRendered']
        self.custom_rendered = attributes[:'CustomRendered']
      end
      
      if attributes[:'DateTimeDigitized']
        self.date_time_digitized = attributes[:'DateTimeDigitized']
      end
      
      if attributes[:'DateTimeOriginal']
        self.date_time_original = attributes[:'DateTimeOriginal']
      end
      
      if attributes[:'DeviceSettingDescription']
        self.device_setting_description = attributes[:'DeviceSettingDescription']
      end
      
      if attributes[:'DigitalZoomRatio']
        self.digital_zoom_ratio = attributes[:'DigitalZoomRatio']
      end
      
      if attributes[:'ExifVersion']
        self.exif_version = attributes[:'ExifVersion']
      end
      
      if attributes[:'ExposureBiasValue']
        self.exposure_bias_value = attributes[:'ExposureBiasValue']
      end
      
      if attributes[:'ExposureIndex']
        self.exposure_index = attributes[:'ExposureIndex']
      end
      
      if attributes[:'ExposureMode']
        self.exposure_mode = attributes[:'ExposureMode']
      end
      
      if attributes[:'ExposureProgram']
        self.exposure_program = attributes[:'ExposureProgram']
      end
      
      if attributes[:'ExposureTime']
        self.exposure_time = attributes[:'ExposureTime']
      end
      
      if attributes[:'FNumber']
        self.f_number = attributes[:'FNumber']
      end
      
      if attributes[:'FileSource']
        self.file_source = attributes[:'FileSource']
      end
      
      if attributes[:'Flash']
        self.flash = attributes[:'Flash']
      end
      
      if attributes[:'FlashEnergy']
        self.flash_energy = attributes[:'FlashEnergy']
      end
      
      if attributes[:'FlashpixVersion']
        self.flashpix_version = attributes[:'FlashpixVersion']
      end
      
      if attributes[:'FocalLength']
        self.focal_length = attributes[:'FocalLength']
      end
      
      if attributes[:'FocalLengthIn35MmFilm']
        self.focal_length_in35_mm_film = attributes[:'FocalLengthIn35MmFilm']
      end
      
      if attributes[:'FocalPlaneResolutionUnit']
        self.focal_plane_resolution_unit = attributes[:'FocalPlaneResolutionUnit']
      end
      
      if attributes[:'FocalPlaneXResolution']
        self.focal_plane_x_resolution = attributes[:'FocalPlaneXResolution']
      end
      
      if attributes[:'FocalPlaneYResolution']
        self.focal_plane_y_resolution = attributes[:'FocalPlaneYResolution']
      end
      
      if attributes[:'GPSAltitude']
        self.gps_altitude = attributes[:'GPSAltitude']
      end
      
      if attributes[:'GPSAltitudeRef']
        self.gps_altitude_ref = attributes[:'GPSAltitudeRef']
      end
      
      if attributes[:'GPSAreaInformation']
        self.gps_area_information = attributes[:'GPSAreaInformation']
      end
      
      if attributes[:'GPSDOP']
        self.gpsdop = attributes[:'GPSDOP']
      end
      
      if attributes[:'GPSDestBearing']
        self.gps_dest_bearing = attributes[:'GPSDestBearing']
      end
      
      if attributes[:'GPSDestBearingRef']
        self.gps_dest_bearing_ref = attributes[:'GPSDestBearingRef']
      end
      
      if attributes[:'GPSDestDistance']
        self.gps_dest_distance = attributes[:'GPSDestDistance']
      end
      
      if attributes[:'GPSDestDistanceRef']
        self.gps_dest_distance_ref = attributes[:'GPSDestDistanceRef']
      end
      
      if attributes[:'GPSDestLatitude']
        if (value = attributes[:'GPSDestLatitude']).is_a?(Array)
          self.gps_dest_latitude = value
        end
      end
      
      if attributes[:'GPSDestLatitudeRef']
        self.gps_dest_latitude_ref = attributes[:'GPSDestLatitudeRef']
      end
      
      if attributes[:'GPSDestLongitude']
        if (value = attributes[:'GPSDestLongitude']).is_a?(Array)
          self.gps_dest_longitude = value
        end
      end
      
      if attributes[:'GPSDestLongitudeRef']
        self.gps_dest_longitude_ref = attributes[:'GPSDestLongitudeRef']
      end
      
      if attributes[:'GPSDifferential']
        self.gps_differential = attributes[:'GPSDifferential']
      end
      
      if attributes[:'GPSImgDirection']
        self.gps_img_direction = attributes[:'GPSImgDirection']
      end
      
      if attributes[:'GPSImgDirectionRef']
        self.gps_img_direction_ref = attributes[:'GPSImgDirectionRef']
      end
      
      if attributes[:'GPSDateStamp']
        self.gps_date_stamp = attributes[:'GPSDateStamp']
      end
      
      if attributes[:'GPSLatitude']
        if (value = attributes[:'GPSLatitude']).is_a?(Array)
          self.gps_latitude = value
        end
      end
      
      if attributes[:'GPSLatitudeRef']
        self.gps_latitude_ref = attributes[:'GPSLatitudeRef']
      end
      
      if attributes[:'GPSLongitude']
        if (value = attributes[:'GPSLongitude']).is_a?(Array)
          self.gps_longitude = value
        end
      end
      
      if attributes[:'GPSLongitudeRef']
        self.gps_longitude_ref = attributes[:'GPSLongitudeRef']
      end
      
      if attributes[:'GPSMapDatum']
        self.gps_map_datum = attributes[:'GPSMapDatum']
      end
      
      if attributes[:'GPSMeasureMode']
        self.gps_measure_mode = attributes[:'GPSMeasureMode']
      end
      
      if attributes[:'GPSProcessingMethod']
        self.gps_processing_method = attributes[:'GPSProcessingMethod']
      end
      
      if attributes[:'GPSSatellites']
        self.gps_satellites = attributes[:'GPSSatellites']
      end
      
      if attributes[:'GPSSpeed']
        self.gps_speed = attributes[:'GPSSpeed']
      end
      
      if attributes[:'GPSSpeedRef']
        self.gps_speed_ref = attributes[:'GPSSpeedRef']
      end
      
      if attributes[:'GPSStatus']
        self.gps_status = attributes[:'GPSStatus']
      end
      
      if attributes[:'GPSTimestamp']
        if (value = attributes[:'GPSTimestamp']).is_a?(Array)
          self.gps_timestamp = value
        end
      end
      
      if attributes[:'GPSTrack']
        self.gps_track = attributes[:'GPSTrack']
      end
      
      if attributes[:'GPSTrackRef']
        self.gps_track_ref = attributes[:'GPSTrackRef']
      end
      
      if attributes[:'GPSVersionID']
        self.gps_version_id = attributes[:'GPSVersionID']
      end
      
      if attributes[:'GainControl']
        self.gain_control = attributes[:'GainControl']
      end
      
      if attributes[:'Gamma']
        self.gamma = attributes[:'Gamma']
      end
      
      if attributes[:'ISOSpeed']
        self.iso_speed = attributes[:'ISOSpeed']
      end
      
      if attributes[:'ISOSpeedLatitudeYYY']
        self.iso_speed_latitude_yyy = attributes[:'ISOSpeedLatitudeYYY']
      end
      
      if attributes[:'ISOSpeedLatitudeZZZ']
        self.iso_speed_latitude_zzz = attributes[:'ISOSpeedLatitudeZZZ']
      end
      
      if attributes[:'PhotographicSensitivity']
        self.photographic_sensitivity = attributes[:'PhotographicSensitivity']
      end
      
      if attributes[:'ImageUniqueID']
        self.image_unique_id = attributes[:'ImageUniqueID']
      end
      
      if attributes[:'LensMake']
        self.lens_make = attributes[:'LensMake']
      end
      
      if attributes[:'LensModel']
        self.lens_model = attributes[:'LensModel']
      end
      
      if attributes[:'LensSerialNumber']
        self.lens_serial_number = attributes[:'LensSerialNumber']
      end
      
      if attributes[:'LensSpecification']
        if (value = attributes[:'LensSpecification']).is_a?(Array)
          self.lens_specification = value
        end
      end
      
      if attributes[:'LightSource']
        self.light_source = attributes[:'LightSource']
      end
      
      if attributes[:'MakerNoteRawData']
        self.maker_note_raw_data = attributes[:'MakerNoteRawData']
      end
      
      if attributes[:'MaxApertureValue']
        self.max_aperture_value = attributes[:'MaxApertureValue']
      end
      
      if attributes[:'MeteringMode']
        self.metering_mode = attributes[:'MeteringMode']
      end
      
      if attributes[:'OECF']
        self.oecf = attributes[:'OECF']
      end
      
      if attributes[:'PixelXDimension']
        self.pixel_x_dimension = attributes[:'PixelXDimension']
      end
      
      if attributes[:'PixelYDimension']
        self.pixel_y_dimension = attributes[:'PixelYDimension']
      end
      
      if attributes[:'RecommendedExposureIndex']
        self.recommended_exposure_index = attributes[:'RecommendedExposureIndex']
      end
      
      if attributes[:'RelatedSoundFile']
        self.related_sound_file = attributes[:'RelatedSoundFile']
      end
      
      if attributes[:'Saturation']
        self.saturation = attributes[:'Saturation']
      end
      
      if attributes[:'SceneCaptureType']
        self.scene_capture_type = attributes[:'SceneCaptureType']
      end
      
      if attributes[:'SceneType']
        self.scene_type = attributes[:'SceneType']
      end
      
      if attributes[:'SensingMethod']
        self.sensing_method = attributes[:'SensingMethod']
      end
      
      if attributes[:'SensitivityType']
        self.sensitivity_type = attributes[:'SensitivityType']
      end
      
      if attributes[:'Sharpness']
        self.sharpness = attributes[:'Sharpness']
      end
      
      if attributes[:'ShutterSpeedValue']
        self.shutter_speed_value = attributes[:'ShutterSpeedValue']
      end
      
      if attributes[:'SpatialFrequencyResponse']
        self.spatial_frequency_response = attributes[:'SpatialFrequencyResponse']
      end
      
      if attributes[:'SpectralSensitivity']
        self.spectral_sensitivity = attributes[:'SpectralSensitivity']
      end
      
      if attributes[:'StandardOutputSensitivity']
        self.standard_output_sensitivity = attributes[:'StandardOutputSensitivity']
      end
      
      if attributes[:'SubjectArea']
        if (value = attributes[:'SubjectArea']).is_a?(Array)
          self.subject_area = value
        end
      end
      
      if attributes[:'SubjectDistance']
        self.subject_distance = attributes[:'SubjectDistance']
      end
      
      if attributes[:'SubjectDistanceRange']
        self.subject_distance_range = attributes[:'SubjectDistanceRange']
      end
      
      if attributes[:'SubjectLocation']
        if (value = attributes[:'SubjectLocation']).is_a?(Array)
          self.subject_location = value
        end
      end
      
      if attributes[:'SubsecTime']
        self.subsec_time = attributes[:'SubsecTime']
      end
      
      if attributes[:'SubsecTimeDigitized']
        self.subsec_time_digitized = attributes[:'SubsecTimeDigitized']
      end
      
      if attributes[:'SubsecTimeOriginal']
        self.subsec_time_original = attributes[:'SubsecTimeOriginal']
      end
      
      if attributes[:'UserComment']
        self.user_comment = attributes[:'UserComment']
      end
      
      if attributes[:'WhiteBalance']
        self.white_balance = attributes[:'WhiteBalance']
      end
      
      if attributes[:'WhitePoint']
        if (value = attributes[:'WhitePoint']).is_a?(Array)
          self.white_point = value
        end
      end
      
    end

  end
end
