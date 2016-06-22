#import "ASPImagingApi.h"
#import "ASPQueryParamCollection.h"
#import "ASPBaseResponse.h"
#import "ASPImagingResponse.h"


@interface ASPImagingApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation ASPImagingApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        ASPConfiguration *config = [ASPConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[ASPApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(ASPApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(ASPImagingApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static ASPImagingApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[ASPImagingApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ASPApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Update parameters of bmp image.
/// 
///  @param bitsPerPixel Color depth.
///
///  @param horizontalResolution New horizontal resolution.
///
///  @param verticalResolution New vertical resolution.
///
///  @param file 
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageBmpWithCompletionBlock: (NSNumber*) bitsPerPixel
         horizontalResolution: (NSNumber*) horizontalResolution
         verticalResolution: (NSNumber*) verticalResolution
         file: (NSURL*) file
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'bitsPerPixel' is set
    if (bitsPerPixel == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `bitsPerPixel` when calling `postImageBmp`"];
    }
    
    // verify the required parameter 'horizontalResolution' is set
    if (horizontalResolution == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `horizontalResolution` when calling `postImageBmp`"];
    }
    
    // verify the required parameter 'verticalResolution' is set
    if (verticalResolution == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `verticalResolution` when calling `postImageBmp`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageBmp`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/bmp"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(bitsPerPixel != nil) {
        
        queryParams[@"bitsPerPixel"] = bitsPerPixel;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Crop image from body
/// 
///  @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
///
///  @param x X position of start point for cropping rectangle
///
///  @param y Y position of start point for cropping rectangle
///
///  @param width Width of cropping rectangle
///
///  @param height Height of cropping rectangle
///
///  @param file 
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postCropImageWithCompletionBlock: (NSString*) format
         x: (NSNumber*) x
         y: (NSNumber*) y
         width: (NSNumber*) width
         height: (NSNumber*) height
         file: (NSURL*) file
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `postCropImage`"];
    }
    
    // verify the required parameter 'x' is set
    if (x == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `x` when calling `postCropImage`"];
    }
    
    // verify the required parameter 'y' is set
    if (y == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `y` when calling `postCropImage`"];
    }
    
    // verify the required parameter 'width' is set
    if (width == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `width` when calling `postCropImage`"];
    }
    
    // verify the required parameter 'height' is set
    if (height == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `height` when calling `postCropImage`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postCropImage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/crop"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(x != nil) {
        
        queryParams[@"x"] = x;
    }
    if(y != nil) {
        
        queryParams[@"y"] = y;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of gif image.
/// 
///  @param file 
///
///  @param backgroundColorIndex Index of the background color.
///
///  @param colorResolution Color resolution.
///
///  @param hasTrailer Specifies if image has trailer.
///
///  @param interlaced Specifies if image is interlaced.
///
///  @param isPaletteSorted Specifies if palette is sorted.
///
///  @param pixelAspectRatio Pixel aspect ratio.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageGifWithCompletionBlock: (NSURL*) file
         backgroundColorIndex: (NSString*) backgroundColorIndex
         colorResolution: (NSString*) colorResolution
         hasTrailer: (NSNumber*) hasTrailer
         interlaced: (NSNumber*) interlaced
         isPaletteSorted: (NSNumber*) isPaletteSorted
         pixelAspectRatio: (NSString*) pixelAspectRatio
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageBmp_1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/gif"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(backgroundColorIndex != nil) {
        
        queryParams[@"backgroundColorIndex"] = backgroundColorIndex;
    }
    if(colorResolution != nil) {
        
        queryParams[@"colorResolution"] = colorResolution;
    }
    if(hasTrailer != nil) {
        
        queryParams[@"hasTrailer"] = hasTrailer;
    }
    if(interlaced != nil) {
        
        queryParams[@"interlaced"] = interlaced;
    }
    if(isPaletteSorted != nil) {
        
        queryParams[@"isPaletteSorted"] = isPaletteSorted;
    }
    if(pixelAspectRatio != nil) {
        
        queryParams[@"pixelAspectRatio"] = pixelAspectRatio;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of jpg image.
/// 
///  @param file 
///
///  @param quality Quality of image. From 0 to 100. Default is 75
///
///  @param compressionType Compression type.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageJpgWithCompletionBlock: (NSURL*) file
         quality: (NSNumber*) quality
         compressionType: (NSString*) compressionType
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageJpg`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/jpg"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(quality != nil) {
        
        queryParams[@"quality"] = quality;
    }
    if(compressionType != nil) {
        
        queryParams[@"compressionType"] = compressionType;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of png image.
/// 
///  @param file 
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImagePngWithCompletionBlock: (NSURL*) file
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImagePng`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/png"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of psd image.
/// 
///  @param file 
///
///  @param channelsCount Count of channels.
///
///  @param compressionMethod Compression method.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImagePsdWithCompletionBlock: (NSURL*) file
         channelsCount: (NSNumber*) channelsCount
         compressionMethod: (NSString*) compressionMethod
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImagePsd`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/psd"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(channelsCount != nil) {
        
        queryParams[@"channelsCount"] = channelsCount;
    }
    if(compressionMethod != nil) {
        
        queryParams[@"compressionMethod"] = compressionMethod;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Change scale of an image from body
/// 
///  @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
///
///  @param newWidth New width of the scaled image.
///
///  @param newHeight New height of the scaled image.
///
///  @param file 
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postChangeImageScaleWithCompletionBlock: (NSString*) format
         newWidth: (NSNumber*) newWidth
         newHeight: (NSNumber*) newHeight
         file: (NSURL*) file
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `postChangeImageScale`"];
    }
    
    // verify the required parameter 'newWidth' is set
    if (newWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newWidth` when calling `postChangeImageScale`"];
    }
    
    // verify the required parameter 'newHeight' is set
    if (newHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newHeight` when calling `postChangeImageScale`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postChangeImageScale`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/resize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(newWidth != nil) {
        
        queryParams[@"newWidth"] = newWidth;
    }
    if(newHeight != nil) {
        
        queryParams[@"newHeight"] = newHeight;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Rotate and flip existing image and get it from response.
/// 
///  @param format Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
///
///  @param method New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
///
///  @param file 
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageRotateFlipWithCompletionBlock: (NSString*) format
         method: (NSString*) method
         file: (NSURL*) file
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `postImageRotateFlip`"];
    }
    
    // verify the required parameter 'method' is set
    if (method == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `method` when calling `postImageRotateFlip`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageRotateFlip`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/rotateflip"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(method != nil) {
        
        queryParams[@"method"] = method;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Export existing image to another format. Image is passed as request body.
/// 
///  @param format Output file format. (Bmp, png, jpg, tiff, psd, gif.)
///
///  @param file 
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageSaveAsWithCompletionBlock: (NSString*) format
         file: (NSURL*) file
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `postImageSaveAs`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageSaveAs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/saveAs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update tiff image.
/// 
///  @param file 
///
///  @param compression New compression.
///
///  @param resolutionUnit New resolution unit.
///
///  @param bitDepth New bit depth.
///
///  @param fromScratch 
///
///  @param horizontalResolution New horizontal resolution.
///
///  @param verticalResolution New verstical resolution.
///
///  @param outPath Path to save result
///
///  @returns NSURL*
///
-(NSNumber*) postProcessTiffWithCompletionBlock: (NSURL*) file
         compression: (NSString*) compression
         resolutionUnit: (NSString*) resolutionUnit
         bitDepth: (NSNumber*) bitDepth
         fromScratch: (NSNumber*) fromScratch
         horizontalResolution: (NSNumber*) horizontalResolution
         verticalResolution: (NSNumber*) verticalResolution
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postProcessTiff`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/tiff"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(compression != nil) {
        
        queryParams[@"compression"] = compression;
    }
    if(resolutionUnit != nil) {
        
        queryParams[@"resolutionUnit"] = resolutionUnit;
    }
    if(bitDepth != nil) {
        
        queryParams[@"bitDepth"] = bitDepth;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Append tiff image.
/// 
///  @param name Original image name.
///
///  @param appendFile Second image file name.
///
///  @param storage The images storage.
///
///  @param folder The images folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postTiffAppendWithCompletionBlock: (NSString*) name
         appendFile: (NSString*) appendFile
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postTiffAppend`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/tiff/{name}/appendTiff"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(appendFile != nil) {
        
        queryParams[@"appendFile"] = appendFile;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get tiff image for fax.
/// 
///  @param name The image file name.
///
///  @param storage The image file storage.
///
///  @param folder The image file folder.
///
///  @param outPath Path to save result
///
///  @returns NSURL*
///
-(NSNumber*) getTiffToFaxWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTiffToFax`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/tiff/{name}/toFax"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Perform scaling, cropping and flipping of an image in single request. Image is passed as request body.
/// 
///  @param format Save image in another format. By default format remains the same
///
///  @param newWidth New Width of the scaled image.
///
///  @param newHeight New height of the scaled image.
///
///  @param x X position of start point for cropping rectangle
///
///  @param y Y position of start point for cropping rectangle
///
///  @param rectWidth Width of cropping rectangle
///
///  @param rectHeight Height of cropping rectangle
///
///  @param rotateFlipMethod RotateFlip method. Default is RotateNoneFlipNone.
///
///  @param file 
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @returns NSURL*
///
-(NSNumber*) postImageSaveAs_2WithCompletionBlock: (NSString*) format
         newWidth: (NSNumber*) newWidth
         newHeight: (NSNumber*) newHeight
         x: (NSNumber*) x
         y: (NSNumber*) y
         rectWidth: (NSNumber*) rectWidth
         rectHeight: (NSNumber*) rectHeight
         rotateFlipMethod: (NSString*) rotateFlipMethod
         file: (NSURL*) file
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'newWidth' is set
    if (newWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newWidth` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'newHeight' is set
    if (newHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newHeight` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'x' is set
    if (x == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `x` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'y' is set
    if (y == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `y` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'rectWidth' is set
    if (rectWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rectWidth` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'rectHeight' is set
    if (rectHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rectHeight` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'rotateFlipMethod' is set
    if (rotateFlipMethod == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rotateFlipMethod` when calling `postImageSaveAs_2`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postImageSaveAs_2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/updateImage"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(newWidth != nil) {
        
        queryParams[@"newWidth"] = newWidth;
    }
    if(newHeight != nil) {
        
        queryParams[@"newHeight"] = newHeight;
    }
    if(x != nil) {
        
        queryParams[@"x"] = x;
    }
    if(y != nil) {
        
        queryParams[@"y"] = y;
    }
    if(rectWidth != nil) {
        
        queryParams[@"rectWidth"] = rectWidth;
    }
    if(rectHeight != nil) {
        
        queryParams[@"rectHeight"] = rectHeight;
    }
    if(rotateFlipMethod != nil) {
        
        queryParams[@"rotateFlipMethod"] = rotateFlipMethod;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of bmp image.
/// 
///  @param name Filename of image.
///
///  @param bitsPerPixel Color depth.
///
///  @param horizontalResolution New horizontal resolution.
///
///  @param verticalResolution New vertical resolution.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageBmpWithCompletionBlock: (NSString*) name
         bitsPerPixel: (NSNumber*) bitsPerPixel
         horizontalResolution: (NSNumber*) horizontalResolution
         verticalResolution: (NSNumber*) verticalResolution
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageBmp`"];
    }
    
    // verify the required parameter 'bitsPerPixel' is set
    if (bitsPerPixel == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `bitsPerPixel` when calling `getImageBmp`"];
    }
    
    // verify the required parameter 'horizontalResolution' is set
    if (horizontalResolution == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `horizontalResolution` when calling `getImageBmp`"];
    }
    
    // verify the required parameter 'verticalResolution' is set
    if (verticalResolution == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `verticalResolution` when calling `getImageBmp`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/bmp"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(bitsPerPixel != nil) {
        
        queryParams[@"bitsPerPixel"] = bitsPerPixel;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Crop existing image
/// 
///  @param name The image name.
///
///  @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
///
///  @param x X position of start point for cropping rectangle
///
///  @param y Y position of start point for cropping rectangle
///
///  @param width Width of cropping rectangle
///
///  @param height Height of cropping rectangle
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getCropImageWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         x: (NSNumber*) x
         y: (NSNumber*) y
         width: (NSNumber*) width
         height: (NSNumber*) height
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getCropImage`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getCropImage`"];
    }
    
    // verify the required parameter 'x' is set
    if (x == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `x` when calling `getCropImage`"];
    }
    
    // verify the required parameter 'y' is set
    if (y == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `y` when calling `getCropImage`"];
    }
    
    // verify the required parameter 'width' is set
    if (width == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `width` when calling `getCropImage`"];
    }
    
    // verify the required parameter 'height' is set
    if (height == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `height` when calling `getCropImage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/crop"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(x != nil) {
        
        queryParams[@"x"] = x;
    }
    if(y != nil) {
        
        queryParams[@"y"] = y;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Get separate frame of tiff image
/// 
///  @param name Filename of image.
///
///  @param frameId Number of frame.
///
///  @param newWidth New width of the scaled image.
///
///  @param newHeight New height of the scaled image.
///
///  @param x X position of start point for cropping rectangle
///
///  @param y Y position of start point for cropping rectangle
///
///  @param rectWidth Width of cropping rectangle
///
///  @param rectHeight Height of cropping rectangle
///
///  @param rotateFlipMethod RotateFlip method.(Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY. Default is RotateNoneFlipNone.)
///
///  @param saveOtherFrames Include all other frames or just specified frame in response.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageFrameWithCompletionBlock: (NSString*) name
         frameId: (NSNumber*) frameId
         newWidth: (NSNumber*) newWidth
         newHeight: (NSNumber*) newHeight
         x: (NSNumber*) x
         y: (NSNumber*) y
         rectWidth: (NSNumber*) rectWidth
         rectHeight: (NSNumber*) rectHeight
         rotateFlipMethod: (NSString*) rotateFlipMethod
         saveOtherFrames: (NSNumber*) saveOtherFrames
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageFrame`"];
    }
    
    // verify the required parameter 'frameId' is set
    if (frameId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `frameId` when calling `getImageFrame`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/frames/{frameId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (frameId != nil) {
        pathParams[@"frameId"] = frameId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(newWidth != nil) {
        
        queryParams[@"newWidth"] = newWidth;
    }
    if(newHeight != nil) {
        
        queryParams[@"newHeight"] = newHeight;
    }
    if(x != nil) {
        
        queryParams[@"x"] = x;
    }
    if(y != nil) {
        
        queryParams[@"y"] = y;
    }
    if(rectWidth != nil) {
        
        queryParams[@"rectWidth"] = rectWidth;
    }
    if(rectHeight != nil) {
        
        queryParams[@"rectHeight"] = rectHeight;
    }
    if(rotateFlipMethod != nil) {
        
        queryParams[@"rotateFlipMethod"] = rotateFlipMethod;
    }
    if(saveOtherFrames != nil) {
        
        queryParams[@"saveOtherFrames"] = saveOtherFrames;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Get properties of a tiff frame.
/// 
///  @param name Filename with image.
///
///  @param frameId Number of frame.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns ASPImagingResponse*
///
-(NSNumber*) getImageFramePropertiesWithCompletionBlock: (NSString*) name
         frameId: (NSNumber*) frameId
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPImagingResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageFrameProperties`"];
    }
    
    // verify the required parameter 'frameId' is set
    if (frameId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `frameId` when calling `getImageFrameProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/frames/{frameId}/properties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (frameId != nil) {
        pathParams[@"frameId"] = frameId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPImagingResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPImagingResponse*)data, error);
              }
          ];
}

///
/// Update parameters of GIF image.
/// 
///  @param name Filename of image.
///
///  @param backgroundColorIndex Index of the background color.
///
///  @param colorResolution Color resolution.
///
///  @param hasTrailer Specifies if image has trailer.
///
///  @param interlaced Specifies if image is interlaced.
///
///  @param isPaletteSorted Specifies if palette is sorted.
///
///  @param pixelAspectRatio Pixel aspect ratio.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageGifWithCompletionBlock: (NSString*) name
         backgroundColorIndex: (NSString*) backgroundColorIndex
         colorResolution: (NSString*) colorResolution
         hasTrailer: (NSNumber*) hasTrailer
         interlaced: (NSNumber*) interlaced
         isPaletteSorted: (NSNumber*) isPaletteSorted
         pixelAspectRatio: (NSString*) pixelAspectRatio
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageGif`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/gif"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(backgroundColorIndex != nil) {
        
        queryParams[@"backgroundColorIndex"] = backgroundColorIndex;
    }
    if(colorResolution != nil) {
        
        queryParams[@"colorResolution"] = colorResolution;
    }
    if(hasTrailer != nil) {
        
        queryParams[@"hasTrailer"] = hasTrailer;
    }
    if(interlaced != nil) {
        
        queryParams[@"interlaced"] = interlaced;
    }
    if(isPaletteSorted != nil) {
        
        queryParams[@"isPaletteSorted"] = isPaletteSorted;
    }
    if(pixelAspectRatio != nil) {
        
        queryParams[@"pixelAspectRatio"] = pixelAspectRatio;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of jpg image.
/// 
///  @param name Filename of image.
///
///  @param quality Quality of image. From 0 to 100. Default is 75
///
///  @param compressionType Compression type.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageJpgWithCompletionBlock: (NSString*) name
         quality: (NSNumber*) quality
         compressionType: (NSString*) compressionType
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageJpg`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/jpg"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(quality != nil) {
        
        queryParams[@"quality"] = quality;
    }
    if(compressionType != nil) {
        
        queryParams[@"compressionType"] = compressionType;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Update parameters of png image.
/// 
///  @param name Filename of image.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImagePngWithCompletionBlock: (NSString*) name
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImagePng`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/png"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Get properties of an image.
/// 
///  @param name The image name.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns ASPImagingResponse*
///
-(NSNumber*) getImagePropertiesWithCompletionBlock: (NSString*) name
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPImagingResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/properties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPImagingResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPImagingResponse*)data, error);
              }
          ];
}

///
/// Update parameters of psd image.
/// 
///  @param name Filename of image.
///
///  @param channelsCount Count of channels.
///
///  @param compressionMethod Compression method.
///
///  @param fromScratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImagePsdWithCompletionBlock: (NSString*) name
         channelsCount: (NSNumber*) channelsCount
         compressionMethod: (NSString*) compressionMethod
         fromScratch: (NSNumber*) fromScratch
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImagePsd`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/psd"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(channelsCount != nil) {
        
        queryParams[@"channelsCount"] = channelsCount;
    }
    if(compressionMethod != nil) {
        
        queryParams[@"compressionMethod"] = compressionMethod;
    }
    if(fromScratch != nil) {
        
        queryParams[@"fromScratch"] = fromScratch;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Change scale of an existing image
/// 
///  @param name The image name.
///
///  @param format Output file format. Valid Formats: Bmp, png, jpg, tiff, psd, gif.
///
///  @param newWidth New width of the scaled image.
///
///  @param newHeight New height of the scaled image.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getChangeImageScaleWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         newWidth: (NSNumber*) newWidth
         newHeight: (NSNumber*) newHeight
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getChangeImageScale`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getChangeImageScale`"];
    }
    
    // verify the required parameter 'newWidth' is set
    if (newWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newWidth` when calling `getChangeImageScale`"];
    }
    
    // verify the required parameter 'newHeight' is set
    if (newHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newHeight` when calling `getChangeImageScale`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/resize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(newWidth != nil) {
        
        queryParams[@"newWidth"] = newWidth;
    }
    if(newHeight != nil) {
        
        queryParams[@"newHeight"] = newHeight;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Rotate and flip existing image
/// 
///  @param name Filename of image.
///
///  @param format Number of frame. (Bmp, png, jpg, tiff, psd, gif.)
///
///  @param method New width of the scaled image. (Rotate180FlipNone,  Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY)
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageRotateFlipWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         method: (NSString*) method
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageRotateFlip`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getImageRotateFlip`"];
    }
    
    // verify the required parameter 'method' is set
    if (method == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `method` when calling `getImageRotateFlip`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/rotateflip"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(method != nil) {
        
        queryParams[@"method"] = method;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Export existing image to another format
/// 
///  @param name Filename of image.
///
///  @param format Output file format. (Bmp, png, jpg, tiff, psd, gif.)
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getImageSaveAsWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageSaveAs`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getImageSaveAs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/saveAs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Perform scaling, cropping and flipping of an image in single request.
/// 
///  @param name Filename of image.
///
///  @param format Save image in another format. By default format remains the same
///
///  @param newWidth New Width of the scaled image.
///
///  @param newHeight New height of the scaled image.
///
///  @param x X position of start point for cropping rectangle
///
///  @param y Y position of start point for cropping rectangle
///
///  @param rectWidth Width of cropping rectangle
///
///  @param rectHeight Height of cropping rectangle
///
///  @param rotateFlipMethod RotateFlip method. Default is RotateNoneFlipNone.
///
///  @param outPath Path to updated file, if this is empty, response contains streamed image.
///
///  @param folder Folder with image to process.
///
///  @param storage 
///
///  @returns NSURL*
///
-(NSNumber*) getUpdatedImageWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         newWidth: (NSNumber*) newWidth
         newHeight: (NSNumber*) newHeight
         x: (NSNumber*) x
         y: (NSNumber*) y
         rectWidth: (NSNumber*) rectWidth
         rectHeight: (NSNumber*) rectHeight
         rotateFlipMethod: (NSString*) rotateFlipMethod
         outPath: (NSString*) outPath
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'newWidth' is set
    if (newWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newWidth` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'newHeight' is set
    if (newHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newHeight` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'x' is set
    if (x == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `x` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'y' is set
    if (y == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `y` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'rectWidth' is set
    if (rectWidth == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rectWidth` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'rectHeight' is set
    if (rectHeight == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rectHeight` when calling `getUpdatedImage`"];
    }
    
    // verify the required parameter 'rotateFlipMethod' is set
    if (rotateFlipMethod == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rotateFlipMethod` when calling `getUpdatedImage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/imaging/{name}/updateImage"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(newWidth != nil) {
        
        queryParams[@"newWidth"] = newWidth;
    }
    if(newHeight != nil) {
        
        queryParams[@"newHeight"] = newHeight;
    }
    if(x != nil) {
        
        queryParams[@"x"] = x;
    }
    if(y != nil) {
        
        queryParams[@"y"] = y;
    }
    if(rectWidth != nil) {
        
        queryParams[@"rectWidth"] = rectWidth;
    }
    if(rectHeight != nil) {
        
        queryParams[@"rectHeight"] = rectHeight;
    }
    if(rotateFlipMethod != nil) {
        
        queryParams[@"rotateFlipMethod"] = rotateFlipMethod;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}



@end
