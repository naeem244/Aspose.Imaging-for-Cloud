#import "ASPJpegExifData.h"

@implementation ASPJpegExifData

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Artist": @"artist", @"Copyright": @"copyright", @"DateTime": @"dateTime", @"ImageDescription": @"imageDescription", @"Make": @"make", @"Model": @"model", @"Orientation": @"orientation", @"PrimaryChromaticities": @"primaryChromaticities", @"ReferenceBlackWhite": @"referenceBlackWhite", @"ResolutionUnit": @"resolutionUnit", @"Software": @"software", @"TransferFunction": @"transferFunction", @"XResolution": @"xResolution", @"YCbCrCoefficients": @"yCbCrCoefficients", @"YCbCrPositioning": @"yCbCrPositioning", @"YResolution": @"yResolution", @"ApertureValue": @"apertureValue", @"BodySerialNumber": @"bodySerialNumber", @"BrightnessValue": @"brightnessValue", @"CFAPattern": @"cFAPattern", @"CameraOwnerName": @"cameraOwnerName", @"ColorSpace": @"colorSpace", @"ComponentsConfiguration": @"componentsConfiguration", @"CompressedBitsPerPixel": @"compressedBitsPerPixel", @"Contrast": @"contrast", @"CustomRendered": @"customRendered", @"DateTimeDigitized": @"dateTimeDigitized", @"DateTimeOriginal": @"dateTimeOriginal", @"DeviceSettingDescription": @"deviceSettingDescription", @"DigitalZoomRatio": @"digitalZoomRatio", @"ExifVersion": @"exifVersion", @"ExposureBiasValue": @"exposureBiasValue", @"ExposureIndex": @"exposureIndex", @"ExposureMode": @"exposureMode", @"ExposureProgram": @"exposureProgram", @"ExposureTime": @"exposureTime", @"FNumber": @"fNumber", @"FileSource": @"fileSource", @"Flash": @"flash", @"FlashEnergy": @"flashEnergy", @"FlashpixVersion": @"flashpixVersion", @"FocalLength": @"focalLength", @"FocalLengthIn35MmFilm": @"focalLengthIn35MmFilm", @"FocalPlaneResolutionUnit": @"focalPlaneResolutionUnit", @"FocalPlaneXResolution": @"focalPlaneXResolution", @"FocalPlaneYResolution": @"focalPlaneYResolution", @"GPSAltitude": @"gPSAltitude", @"GPSAltitudeRef": @"gPSAltitudeRef", @"GPSAreaInformation": @"gPSAreaInformation", @"GPSDOP": @"gPSDOP", @"GPSDestBearing": @"gPSDestBearing", @"GPSDestBearingRef": @"gPSDestBearingRef", @"GPSDestDistance": @"gPSDestDistance", @"GPSDestDistanceRef": @"gPSDestDistanceRef", @"GPSDestLatitude": @"gPSDestLatitude", @"GPSDestLatitudeRef": @"gPSDestLatitudeRef", @"GPSDestLongitude": @"gPSDestLongitude", @"GPSDestLongitudeRef": @"gPSDestLongitudeRef", @"GPSDifferential": @"gPSDifferential", @"GPSImgDirection": @"gPSImgDirection", @"GPSImgDirectionRef": @"gPSImgDirectionRef", @"GPSDateStamp": @"gPSDateStamp", @"GPSLatitude": @"gPSLatitude", @"GPSLatitudeRef": @"gPSLatitudeRef", @"GPSLongitude": @"gPSLongitude", @"GPSLongitudeRef": @"gPSLongitudeRef", @"GPSMapDatum": @"gPSMapDatum", @"GPSMeasureMode": @"gPSMeasureMode", @"GPSProcessingMethod": @"gPSProcessingMethod", @"GPSSatellites": @"gPSSatellites", @"GPSSpeed": @"gPSSpeed", @"GPSSpeedRef": @"gPSSpeedRef", @"GPSStatus": @"gPSStatus", @"GPSTimestamp": @"gPSTimestamp", @"GPSTrack": @"gPSTrack", @"GPSTrackRef": @"gPSTrackRef", @"GPSVersionID": @"gPSVersionID", @"GainControl": @"gainControl", @"Gamma": @"gamma", @"ISOSpeed": @"iSOSpeed", @"ISOSpeedLatitudeYYY": @"iSOSpeedLatitudeYYY", @"ISOSpeedLatitudeZZZ": @"iSOSpeedLatitudeZZZ", @"PhotographicSensitivity": @"photographicSensitivity", @"ImageUniqueID": @"imageUniqueID", @"LensMake": @"lensMake", @"LensModel": @"lensModel", @"LensSerialNumber": @"lensSerialNumber", @"LensSpecification": @"lensSpecification", @"LightSource": @"lightSource", @"MakerNoteRawData": @"makerNoteRawData", @"MaxApertureValue": @"maxApertureValue", @"MeteringMode": @"meteringMode", @"OECF": @"oECF", @"PixelXDimension": @"pixelXDimension", @"PixelYDimension": @"pixelYDimension", @"RecommendedExposureIndex": @"recommendedExposureIndex", @"RelatedSoundFile": @"relatedSoundFile", @"Saturation": @"saturation", @"SceneCaptureType": @"sceneCaptureType", @"SceneType": @"sceneType", @"SensingMethod": @"sensingMethod", @"SensitivityType": @"sensitivityType", @"Sharpness": @"sharpness", @"ShutterSpeedValue": @"shutterSpeedValue", @"SpatialFrequencyResponse": @"spatialFrequencyResponse", @"SpectralSensitivity": @"spectralSensitivity", @"StandardOutputSensitivity": @"standardOutputSensitivity", @"SubjectArea": @"subjectArea", @"SubjectDistance": @"subjectDistance", @"SubjectDistanceRange": @"subjectDistanceRange", @"SubjectLocation": @"subjectLocation", @"SubsecTime": @"subsecTime", @"SubsecTimeDigitized": @"subsecTimeDigitized", @"SubsecTimeOriginal": @"subsecTimeOriginal", @"UserComment": @"userComment", @"WhiteBalance": @"whiteBalance", @"WhitePoint": @"whitePoint" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"artist", @"copyright", @"dateTime", @"imageDescription", @"make", @"model", @"orientation", @"primaryChromaticities", @"referenceBlackWhite", @"resolutionUnit", @"software", @"transferFunction", @"xResolution", @"yCbCrCoefficients", @"yCbCrPositioning", @"yResolution", @"apertureValue", @"bodySerialNumber", @"brightnessValue", @"cFAPattern", @"cameraOwnerName", @"colorSpace", @"componentsConfiguration", @"compressedBitsPerPixel", @"contrast", @"customRendered", @"dateTimeDigitized", @"dateTimeOriginal", @"deviceSettingDescription", @"digitalZoomRatio", @"exifVersion", @"exposureBiasValue", @"exposureIndex", @"exposureMode", @"exposureProgram", @"exposureTime", @"fNumber", @"fileSource", @"flash", @"flashEnergy", @"flashpixVersion", @"focalLength", @"focalLengthIn35MmFilm", @"focalPlaneResolutionUnit", @"focalPlaneXResolution", @"focalPlaneYResolution", @"gPSAltitude", @"gPSAltitudeRef", @"gPSAreaInformation", @"gPSDOP", @"gPSDestBearing", @"gPSDestBearingRef", @"gPSDestDistance", @"gPSDestDistanceRef", @"gPSDestLatitude", @"gPSDestLatitudeRef", @"gPSDestLongitude", @"gPSDestLongitudeRef", @"gPSDifferential", @"gPSImgDirection", @"gPSImgDirectionRef", @"gPSDateStamp", @"gPSLatitude", @"gPSLatitudeRef", @"gPSLongitude", @"gPSLongitudeRef", @"gPSMapDatum", @"gPSMeasureMode", @"gPSProcessingMethod", @"gPSSatellites", @"gPSSpeed", @"gPSSpeedRef", @"gPSStatus", @"gPSTimestamp", @"gPSTrack", @"gPSTrackRef", @"gPSVersionID", @"gainControl", @"gamma", @"iSOSpeed", @"iSOSpeedLatitudeYYY", @"iSOSpeedLatitudeZZZ", @"photographicSensitivity", @"imageUniqueID", @"lensMake", @"lensModel", @"lensSerialNumber", @"lensSpecification", @"lightSource", @"makerNoteRawData", @"maxApertureValue", @"meteringMode", @"oECF", @"pixelXDimension", @"pixelYDimension", @"recommendedExposureIndex", @"relatedSoundFile", @"saturation", @"sceneCaptureType", @"sceneType", @"sensingMethod", @"sensitivityType", @"sharpness", @"shutterSpeedValue", @"spatialFrequencyResponse", @"spectralSensitivity", @"standardOutputSensitivity", @"subjectArea", @"subjectDistance", @"subjectDistanceRange", @"subjectLocation", @"subsecTime", @"subsecTimeDigitized", @"subsecTimeOriginal", @"userComment", @"whiteBalance", @"whitePoint"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
