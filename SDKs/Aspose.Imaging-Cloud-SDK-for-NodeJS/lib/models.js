exports.models = {
  "TiffProperties": {
  "properties" : {
    "ByteOrder" : {
      "type" : "string"
    },
    "ExifData" : {
      "$ref" : "ExifData"
    }
  },
  "id" : "TiffProperties"
},"HttpStatusCode": {
  "id" : "HttpStatusCode"
},"TextEffect": {
  "id" : "TextEffect"
},"PageBorderAppliesTo": {
  "id" : "PageBorderAppliesTo"
},"JpegExifData": {
  "properties" : {
    "Artist" : {
      "type" : "string"
    },
    "Copyright" : {
      "type" : "string"
    },
    "DateTime" : {
      "type" : "string"
    },
    "ImageDescription" : {
      "type" : "string"
    },
    "Make" : {
      "type" : "string"
    },
    "Model" : {
      "type" : "string"
    },
    "Orientation" : {
      "type" : "string"
    },
    "PrimaryChromaticities" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "ReferenceBlackWhite" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "ResolutionUnit" : {
      "type" : "string"
    },
    "Software" : {
      "type" : "string"
    },
    "TransferFunction" : {
      "type" : "array",
      "items" : {
        "$ref" : "integer"
      }
    },
    "XResolution" : {
      "$ref" : "double"
    },
    "YCbCrCoefficients" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "YCbCrPositioning" : {
      "type" : "string"
    },
    "YResolution" : {
      "$ref" : "double"
    },
    "ApertureValue" : {
      "$ref" : "double"
    },
    "BodySerialNumber" : {
      "type" : "string"
    },
    "BrightnessValue" : {
      "$ref" : "double"
    },
    "CFAPattern" : {
      "type" : "string"
    },
    "CameraOwnerName" : {
      "type" : "string"
    },
    "ColorSpace" : {
      "type" : "string"
    },
    "ComponentsConfiguration" : {
      "type" : "string"
    },
    "CompressedBitsPerPixel" : {
      "$ref" : "double"
    },
    "Contrast" : {
      "type" : "string"
    },
    "CustomRendered" : {
      "type" : "string"
    },
    "DateTimeDigitized" : {
      "type" : "string"
    },
    "DateTimeOriginal" : {
      "type" : "string"
    },
    "DeviceSettingDescription" : {
      "type" : "string"
    },
    "DigitalZoomRatio" : {
      "$ref" : "double"
    },
    "ExifVersion" : {
      "type" : "string"
    },
    "ExposureBiasValue" : {
      "$ref" : "double"
    },
    "ExposureIndex" : {
      "$ref" : "double"
    },
    "ExposureMode" : {
      "type" : "string"
    },
    "ExposureProgram" : {
      "type" : "string"
    },
    "ExposureTime" : {
      "$ref" : "double"
    },
    "FNumber" : {
      "$ref" : "double"
    },
    "FileSource" : {
      "type" : "string"
    },
    "Flash" : {
      "type" : "string"
    },
    "FlashEnergy" : {
      "$ref" : "double"
    },
    "FlashpixVersion" : {
      "type" : "string"
    },
    "FocalLength" : {
      "$ref" : "double"
    },
    "FocalLengthIn35MmFilm" : {
      "type" : "integer",
      "format" : "int32"
    },
    "FocalPlaneResolutionUnit" : {
      "type" : "string"
    },
    "FocalPlaneXResolution" : {
      "$ref" : "double"
    },
    "FocalPlaneYResolution" : {
      "$ref" : "double"
    },
    "GPSAltitude" : {
      "$ref" : "double"
    },
    "GPSAltitudeRef" : {
      "type" : "string"
    },
    "GPSAreaInformation" : {
      "type" : "string"
    },
    "GPSDOP" : {
      "$ref" : "double"
    },
    "GPSDestBearing" : {
      "$ref" : "double"
    },
    "GPSDestBearingRef" : {
      "type" : "string"
    },
    "GPSDestDistance" : {
      "$ref" : "double"
    },
    "GPSDestDistanceRef" : {
      "type" : "string"
    },
    "GPSDestLatitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSDestLatitudeRef" : {
      "type" : "string"
    },
    "GPSDestLongitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSDestLongitudeRef" : {
      "type" : "string"
    },
    "GPSDifferential" : {
      "type" : "integer",
      "format" : "int32"
    },
    "GPSImgDirection" : {
      "$ref" : "double"
    },
    "GPSImgDirectionRef" : {
      "type" : "string"
    },
    "GPSDateStamp" : {
      "type" : "string"
    },
    "GPSLatitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSLatitudeRef" : {
      "type" : "string"
    },
    "GPSLongitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSLongitudeRef" : {
      "type" : "string"
    },
    "GPSMapDatum" : {
      "type" : "string"
    },
    "GPSMeasureMode" : {
      "type" : "string"
    },
    "GPSProcessingMethod" : {
      "type" : "string"
    },
    "GPSSatellites" : {
      "type" : "string"
    },
    "GPSSpeed" : {
      "$ref" : "double"
    },
    "GPSSpeedRef" : {
      "type" : "string"
    },
    "GPSStatus" : {
      "type" : "string"
    },
    "GPSTimestamp" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSTrack" : {
      "type" : "string"
    },
    "GPSTrackRef" : {
      "type" : "string"
    },
    "GPSVersionID" : {
      "type" : "string"
    },
    "GainControl" : {
      "type" : "string"
    },
    "Gamma" : {
      "$ref" : "double"
    },
    "ISOSpeed" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ISOSpeedLatitudeYYY" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ISOSpeedLatitudeZZZ" : {
      "type" : "integer",
      "format" : "int32"
    },
    "PhotographicSensitivity" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ImageUniqueID" : {
      "type" : "string"
    },
    "LensMake" : {
      "type" : "string"
    },
    "LensModel" : {
      "type" : "string"
    },
    "LensSerialNumber" : {
      "type" : "string"
    },
    "LensSpecification" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "LightSource" : {
      "type" : "string"
    },
    "MakerNoteRawData" : {
      "type" : "string"
    },
    "MaxApertureValue" : {
      "$ref" : "double"
    },
    "MeteringMode" : {
      "type" : "string"
    },
    "OECF" : {
      "type" : "string"
    },
    "PixelXDimension" : {
      "type" : "integer",
      "format" : "int32"
    },
    "PixelYDimension" : {
      "type" : "integer",
      "format" : "int32"
    },
    "RecommendedExposureIndex" : {
      "type" : "integer",
      "format" : "int32"
    },
    "RelatedSoundFile" : {
      "type" : "string"
    },
    "Saturation" : {
      "type" : "string"
    },
    "SceneCaptureType" : {
      "type" : "string"
    },
    "SceneType" : {
      "type" : "string"
    },
    "SensingMethod" : {
      "type" : "string"
    },
    "SensitivityType" : {
      "type" : "integer",
      "format" : "int32"
    },
    "Sharpness" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ShutterSpeedValue" : {
      "$ref" : "double"
    },
    "SpatialFrequencyResponse" : {
      "type" : "string"
    },
    "SpectralSensitivity" : {
      "type" : "string"
    },
    "StandardOutputSensitivity" : {
      "type" : "integer",
      "format" : "int32"
    },
    "SubjectArea" : {
      "type" : "array",
      "items" : {
        "$ref" : "integer"
      }
    },
    "SubjectDistance" : {
      "$ref" : "double"
    },
    "SubjectDistanceRange" : {
      "type" : "string"
    },
    "SubjectLocation" : {
      "type" : "array",
      "items" : {
        "$ref" : "integer"
      }
    },
    "SubsecTime" : {
      "type" : "string"
    },
    "SubsecTimeDigitized" : {
      "type" : "string"
    },
    "SubsecTimeOriginal" : {
      "type" : "string"
    },
    "UserComment" : {
      "type" : "string"
    },
    "WhiteBalance" : {
      "type" : "string"
    },
    "WhitePoint" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    }
  },
  "id" : "JpegExifData"
},"Orientation": {
  "id" : "Orientation"
},"PsdProperties": {
  "properties" : {
    "BitsPerChannel" : {
      "$ref" : "int"
    },
    "ChannelsCount" : {
      "$ref" : "int"
    },
    "ColorMode" : {
      "type" : "string"
    },
    "Compression" : {
      "type" : "string"
    }
  },
  "id" : "PsdProperties"
},"PageVerticalAlignment": {
  "id" : "PageVerticalAlignment"
},"NumberStyle": {
  "id" : "NumberStyle"
},"JpegProperties": {
  "properties" : {
    "Comment" : {
      "type" : "string"
    },
    "JpegExifData" : {
      "$ref" : "JpegExifData"
    },
    "JpegJfifData" : {
      "$ref" : "JfifData"
    }
  },
  "id" : "JpegProperties"
},"BmpProperties": {
  "properties" : {
    "Compression" : {
      "type" : "string"
    }
  },
  "id" : "BmpProperties"
},"StyleIdentifier": {
  "id" : "StyleIdentifier"
},"PageBorderDistanceFrom": {
  "id" : "PageBorderDistanceFrom"
},"ResponseMessage": {
  "properties" : {
    "Code" : {
      "$ref" : "int"
    },
    "Message" : {
      "type" : "string"
    }
  },
  "id" : "ResponseMessage"
},"LineNumberRestartMode": {
  "id" : "LineNumberRestartMode"
},"PaperSize": {
  "id" : "PaperSize"
},"ReportType": {
  "id" : "ReportType"
},"GifProperties": {
  "properties" : {
    "BackgroundColor" : {
      "type" : "string"
    },
    "HasTrailer" : {
      "type" : "boolean"
    },
    "PixelAspectRatio" : {
      "type" : "string"
    }
  },
  "id" : "GifProperties"
},"ImagingResponse": {
  "properties" : {
    "Height" : {
      "$ref" : "int"
    },
    "Width" : {
      "$ref" : "int"
    },
    "BitsPerPixel" : {
      "$ref" : "int"
    },
    "BmpProperties" : {
      "$ref" : "BmpProperties"
    },
    "GifProperties" : {
      "$ref" : "GifProperties"
    },
    "JpegProperties" : {
      "$ref" : "JpegProperties"
    },
    "PngProperties" : {
      "$ref" : "PngProperties"
    },
    "TiffProperties" : {
      "$ref" : "TiffProperties"
    },
    "PsdProperties" : {
      "$ref" : "PsdProperties"
    },
    "HorizontalResolution" : {
      "$ref" : "double"
    },
    "VerticalResolution" : {
      "$ref" : "double"
    },
    "IsCached" : {
      "type" : "boolean"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ImagingResponse"
},"Underline": {
  "id" : "Underline"
},"SectionStart": {
  "id" : "SectionStart"
},"ExifData": {
  "properties" : {
    "ApertureValue" : {
      "$ref" : "double"
    },
    "BodySerialNumber" : {
      "type" : "string"
    },
    "BrightnessValue" : {
      "$ref" : "double"
    },
    "CFAPattern" : {
      "type" : "string"
    },
    "CameraOwnerName" : {
      "type" : "string"
    },
    "ColorSpace" : {
      "type" : "string"
    },
    "ComponentsConfiguration" : {
      "type" : "string"
    },
    "CompressedBitsPerPixel" : {
      "$ref" : "double"
    },
    "Contrast" : {
      "type" : "string"
    },
    "CustomRendered" : {
      "type" : "string"
    },
    "DateTimeDigitized" : {
      "type" : "string"
    },
    "DateTimeOriginal" : {
      "type" : "string"
    },
    "DeviceSettingDescription" : {
      "type" : "string"
    },
    "DigitalZoomRatio" : {
      "$ref" : "double"
    },
    "ExifVersion" : {
      "type" : "string"
    },
    "ExposureBiasValue" : {
      "$ref" : "double"
    },
    "ExposureIndex" : {
      "$ref" : "double"
    },
    "ExposureMode" : {
      "type" : "string"
    },
    "ExposureProgram" : {
      "type" : "string"
    },
    "ExposureTime" : {
      "$ref" : "double"
    },
    "FNumber" : {
      "$ref" : "double"
    },
    "FileSource" : {
      "type" : "string"
    },
    "Flash" : {
      "type" : "string"
    },
    "FlashEnergy" : {
      "$ref" : "double"
    },
    "FlashpixVersion" : {
      "type" : "string"
    },
    "FocalLength" : {
      "$ref" : "double"
    },
    "FocalLengthIn35MmFilm" : {
      "type" : "integer",
      "format" : "int32"
    },
    "FocalPlaneResolutionUnit" : {
      "type" : "string"
    },
    "FocalPlaneXResolution" : {
      "$ref" : "double"
    },
    "FocalPlaneYResolution" : {
      "$ref" : "double"
    },
    "GPSAltitude" : {
      "$ref" : "double"
    },
    "GPSAltitudeRef" : {
      "type" : "string"
    },
    "GPSAreaInformation" : {
      "type" : "string"
    },
    "GPSDOP" : {
      "$ref" : "double"
    },
    "GPSDestBearing" : {
      "$ref" : "double"
    },
    "GPSDestBearingRef" : {
      "type" : "string"
    },
    "GPSDestDistance" : {
      "$ref" : "double"
    },
    "GPSDestDistanceRef" : {
      "type" : "string"
    },
    "GPSDestLatitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSDestLatitudeRef" : {
      "type" : "string"
    },
    "GPSDestLongitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSDestLongitudeRef" : {
      "type" : "string"
    },
    "GPSDifferential" : {
      "type" : "integer",
      "format" : "int32"
    },
    "GPSImgDirection" : {
      "$ref" : "double"
    },
    "GPSImgDirectionRef" : {
      "type" : "string"
    },
    "GPSDateStamp" : {
      "type" : "string"
    },
    "GPSLatitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSLatitudeRef" : {
      "type" : "string"
    },
    "GPSLongitude" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSLongitudeRef" : {
      "type" : "string"
    },
    "GPSMapDatum" : {
      "type" : "string"
    },
    "GPSMeasureMode" : {
      "type" : "string"
    },
    "GPSProcessingMethod" : {
      "type" : "string"
    },
    "GPSSatellites" : {
      "type" : "string"
    },
    "GPSSpeed" : {
      "$ref" : "double"
    },
    "GPSSpeedRef" : {
      "type" : "string"
    },
    "GPSStatus" : {
      "type" : "string"
    },
    "GPSTimestamp" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "GPSTrack" : {
      "type" : "string"
    },
    "GPSTrackRef" : {
      "type" : "string"
    },
    "GPSVersionID" : {
      "type" : "string"
    },
    "GainControl" : {
      "type" : "string"
    },
    "Gamma" : {
      "$ref" : "double"
    },
    "ISOSpeed" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ISOSpeedLatitudeYYY" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ISOSpeedLatitudeZZZ" : {
      "type" : "integer",
      "format" : "int32"
    },
    "PhotographicSensitivity" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ImageUniqueID" : {
      "type" : "string"
    },
    "LensMake" : {
      "type" : "string"
    },
    "LensModel" : {
      "type" : "string"
    },
    "LensSerialNumber" : {
      "type" : "string"
    },
    "LensSpecification" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    },
    "LightSource" : {
      "type" : "string"
    },
    "MakerNoteRawData" : {
      "type" : "string"
    },
    "MaxApertureValue" : {
      "$ref" : "double"
    },
    "MeteringMode" : {
      "type" : "string"
    },
    "OECF" : {
      "type" : "string"
    },
    "PixelXDimension" : {
      "type" : "integer",
      "format" : "int32"
    },
    "PixelYDimension" : {
      "type" : "integer",
      "format" : "int32"
    },
    "RecommendedExposureIndex" : {
      "type" : "integer",
      "format" : "int32"
    },
    "RelatedSoundFile" : {
      "type" : "string"
    },
    "Saturation" : {
      "type" : "string"
    },
    "SceneCaptureType" : {
      "type" : "string"
    },
    "SceneType" : {
      "type" : "string"
    },
    "SensingMethod" : {
      "type" : "string"
    },
    "SensitivityType" : {
      "type" : "integer",
      "format" : "int32"
    },
    "Sharpness" : {
      "type" : "integer",
      "format" : "int32"
    },
    "ShutterSpeedValue" : {
      "$ref" : "double"
    },
    "SpatialFrequencyResponse" : {
      "type" : "string"
    },
    "SpectralSensitivity" : {
      "type" : "string"
    },
    "StandardOutputSensitivity" : {
      "type" : "integer",
      "format" : "int32"
    },
    "SubjectArea" : {
      "type" : "array",
      "items" : {
        "$ref" : "integer"
      }
    },
    "SubjectDistance" : {
      "$ref" : "double"
    },
    "SubjectDistanceRange" : {
      "type" : "string"
    },
    "SubjectLocation" : {
      "type" : "array",
      "items" : {
        "$ref" : "integer"
      }
    },
    "SubsecTime" : {
      "type" : "string"
    },
    "SubsecTimeDigitized" : {
      "type" : "string"
    },
    "SubsecTimeOriginal" : {
      "type" : "string"
    },
    "UserComment" : {
      "type" : "string"
    },
    "WhiteBalance" : {
      "type" : "string"
    },
    "WhitePoint" : {
      "type" : "array",
      "items" : {
        "$ref" : "double"
      }
    }
  },
  "id" : "ExifData"
},"JfifData": {
  "properties" : {
    "DensityUnits" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "integer",
      "format" : "int32"
    },
    "XDensity" : {
      "type" : "integer",
      "format" : "int32"
    },
    "YDensity" : {
      "type" : "integer",
      "format" : "int32"
    }
  },
  "id" : "JfifData"
},"HttpResponseMessage": {
  "properties" : {
    "Content" : {
      "type" : "string"
    },
    "Headers" : {
      "type" : "string"
    },
    "IsSuccessStatusCode" : {
      "$ref" : "bool"
    },
    "ReasonPhrase" : {
      "type" : "string"
    },
    "RequestMessage" : {
      "type" : "string"
    },
    "StatusCode" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "string"
    }
  },
  "id" : "HttpResponseMessage"
},"PngProperties": {
  "id" : "PngProperties"
},"SaaSposeResponse": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SaaSposeResponse"
}
}