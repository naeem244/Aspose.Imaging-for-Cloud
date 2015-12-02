#import "ASPTiffOptions.h"

@implementation ASPTiffOptions

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"IsValid": @"isValid", @"Artist": @"artist", @"ByteOrder": @"byteOrder", @"BitsPerSample": @"bitsPerSample", @"Compression": @"compression", @"Copyright": @"copyright", @"ColorMap": @"colorMap", @"DateTime": @"dateTime", @"DocumentName": @"documentName", @"AlphaStorage": @"alphaStorage", @"FillOrder": @"fillOrder", @"HalfToneHints": @"halfToneHints", @"ImageDescription": @"imageDescription", @"InkNames": @"inkNames", @"ScannerManufacturer": @"scannerManufacturer", @"MaxSampleValue": @"maxSampleValue", @"MinSampleValue": @"minSampleValue", @"ScannerModel": @"scannerModel", @"PageName": @"pageName", @"Orientation": @"orientation", @"PageNumber": @"pageNumber", @"Photometric": @"photometric", @"PlanarConfiguration": @"planarConfiguration", @"ResolutionUnit": @"resolutionUnit", @"RowsPerStrip": @"rowsPerStrip", @"SampleFormat": @"sampleFormat", @"SamplesPerPixel": @"samplesPerPixel", @"SmaxSampleValue": @"smaxSampleValue", @"SminSampleValue": @"sminSampleValue", @"SoftwareType": @"softwareType", @"StripByteCounts": @"stripByteCounts", @"StripOffsets": @"stripOffsets", @"SubFileType": @"subFileType", @"TargetPrinter": @"targetPrinter", @"Threshholding": @"threshholding", @"TotalPages": @"totalPages", @"Xposition": @"xposition", @"Xresolution": @"xresolution", @"Yposition": @"yposition", @"Yresolution": @"yresolution", @"FaxT4Options": @"faxT4Options", @"Predictor": @"predictor", @"ImageLength": @"imageLength", @"ImageWidth": @"imageWidth", @"ValidTagCount": @"validTagCount", @"BitsPerPixel": @"bitsPerPixel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"isValid", @"artist", @"byteOrder", @"bitsPerSample", @"compression", @"copyright", @"colorMap", @"dateTime", @"documentName", @"alphaStorage", @"fillOrder", @"halfToneHints", @"imageDescription", @"inkNames", @"scannerManufacturer", @"maxSampleValue", @"minSampleValue", @"scannerModel", @"pageName", @"orientation", @"pageNumber", @"photometric", @"planarConfiguration", @"resolutionUnit", @"rowsPerStrip", @"sampleFormat", @"samplesPerPixel", @"smaxSampleValue", @"sminSampleValue", @"softwareType", @"stripByteCounts", @"stripOffsets", @"subFileType", @"targetPrinter", @"threshholding", @"totalPages", @"xposition", @"xresolution", @"yposition", @"yresolution", @"faxT4Options", @"predictor", @"imageLength", @"imageWidth", @"validTagCount", @"bitsPerPixel"];

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
