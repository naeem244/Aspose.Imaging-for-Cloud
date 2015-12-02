#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPGifProperties.h"
#import "ASPBmpProperties.h"
#import "ASPTiffProperties.h"
#import "ASPPngProperties.h"
#import "ASPJpegProperties.h"
#import "ASPPsdProperties.h"


@protocol ASPImagingResponse
@end

@interface ASPImagingResponse : ASPObject


@property(nonatomic) NSNumber* height;

@property(nonatomic) NSNumber* width;

@property(nonatomic) NSNumber* bitsPerPixel;

@property(nonatomic) ASPBmpProperties* bmpProperties;

@property(nonatomic) ASPGifProperties* gifProperties;

@property(nonatomic) ASPJpegProperties* jpegProperties;

@property(nonatomic) ASPPngProperties* pngProperties;

@property(nonatomic) ASPTiffProperties* tiffProperties;

@property(nonatomic) ASPPsdProperties* psdProperties;

@property(nonatomic) NSNumber* horizontalResolution;

@property(nonatomic) NSNumber* verticalResolution;

@property(nonatomic) NSNumber* isCached;

@property(nonatomic) NSString* code;

@property(nonatomic) NSString* status;

@end
