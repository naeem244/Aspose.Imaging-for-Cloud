//
//  ASPImagingApiTestCase.m
//  Aspose.Imaging_Cloud_SDK_For_Objective_C
//
//  Created by Muhammad Sohail Ismail on 01/12/2015.
//  Copyright © 2015 Aspose. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASPImagingApi.h"
#import "ASPStorageApi.h"
#import "AppDelegate.h"

@interface ASPImagingApiTestCase : XCTestCase
@property(nonatomic, strong) ASPImagingApi *imagingApi;
@end

@implementation ASPImagingApiTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.imagingApi = [[ASPImagingApi alloc] init];
    //Get App key and App SID from https://cloud.aspose.com
    [ASPApiClient setAppKey:ASPAppKey andAppSID:ASPAppSID];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)uploadFile:(NSString *) fileName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStorageApi *storageApi = [[ASPStorageApi alloc] init];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:[fileName stringByDeletingPathExtension] withExtension:[fileName pathExtension]];
    [storageApi putCreateWithCompletionBlock:fileName
                                        file:pathToFile
                                   versionId:nil
                                     storage:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to upload a specific file.");
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageBmp {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"sample" withExtension:@"bmp"];
    
    [self.imagingApi postImageBmpWithCompletionBlock:[NSNumber numberWithInt:24]
                                horizontalResolution:[NSNumber numberWithInt:300]
                                  verticalResolution:[NSNumber numberWithInt:300]
                                                file:pathToFile
                                         fromScratch:nil
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to update parameters of bmp image.");
                                        [expectation fulfill];
                                    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCropImage {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose" withExtension:@"jpg"];
    
    [self.imagingApi postCropImageWithCompletionBlock:@"png"
                                                    x:[NSNumber numberWithInt:30]
                                                    y:[NSNumber numberWithInt:40]
                                                width:[NSNumber numberWithInt:100]
                                               height:[NSNumber numberWithInt:100]
                                                 file:pathToFile
                                              outPath:nil
                                    completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to crop image from body");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageGif {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"sample" withExtension:@"gif"];
    
    [self.imagingApi postImageGifWithCompletionBlock:pathToFile
                                backgroundColorIndex:@"255"
                                     colorResolution:@"7"
                                          hasTrailer:nil
                                          interlaced:nil
                                     isPaletteSorted:nil
                                    pixelAspectRatio:nil
                                         fromScratch:nil
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to update parameters of gif image.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageJpg {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose" withExtension:@"jpg"];
    
    [self.imagingApi postImageJpgWithCompletionBlock:pathToFile
                                             quality:[NSNumber numberWithInt:100]
                                     compressionType:@"progressive"
                                         fromScratch:nil
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to update parameters of jpg image.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImagePng {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose_imaging_for_cloud" withExtension:@"png"];
    
    [self.imagingApi postImagePngWithCompletionBlock:pathToFile
                                         fromScratch:[NSNumber numberWithBool:YES]
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to update parameters of png image.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImagePsd {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"sample" withExtension:@"psd"];
    
    [self.imagingApi postImagePsdWithCompletionBlock:pathToFile
                                       channelsCount:[NSNumber numberWithInt:3]
                                   compressionMethod:@"rle"
                                         fromScratch:nil
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to update parameters of psd image.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostChangeImageScale {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose_imaging_for_cloud" withExtension:@"png"];
    
    [self.imagingApi postChangeImageScaleWithCompletionBlock:@"jpg"
                                                    newWidth:[NSNumber numberWithInt:200]
                                                   newHeight:[NSNumber numberWithInt:200]
                                                        file:pathToFile
                                                     outPath:nil
                                           completionHandler:^(NSURL *output, NSError *error) {
                                               XCTAssertNotNil(output, @"Failed to change scale of an image from body.");
                                               [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageRotateFlip {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose" withExtension:@"jpg"];
    
    [self.imagingApi postImageRotateFlipWithCompletionBlock:@"png"
                                                     method:@"Rotate180FlipX"
                                                       file:pathToFile
                                                    outPath:nil
                                          completionHandler:^(NSURL *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to rotate and flip existing image.");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageSaveAs {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"aspose" withExtension:@"jpg"];
    
    [self.imagingApi postImageSaveAsWithCompletionBlock:@"png"
                                                   file:pathToFile
                                                outPath:nil
                                      completionHandler:^(NSURL *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to export existing image to another format.");
                                        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProcessTiff {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"demo" withExtension:@"tif"];
    
    [self.imagingApi postProcessTiffWithCompletionBlock:pathToFile
                                            compression:@"ccittfax3"
                                         resolutionUnit:@"inch"
                                               bitDepth:[NSNumber numberWithInt:1]
                                            fromScratch:nil
                                   horizontalResolution:nil
                                     verticalResolution:nil
                                                outPath:nil
                                      completionHandler:^(NSURL *output, NSError *error) {
                                          XCTAssertNotNil(output, @"Failed to update tiff image.");
                                          [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostTiffAppend {
    
    NSString *fileName = @"sample.tif";
    [self uploadFile:fileName];
    NSString *appendFile = @"TestDemo.tif";
    [self uploadFile:appendFile];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi postTiffAppendWithCompletionBlock:fileName
                                            appendFile:appendFile
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to append tiff image.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTiffToFax {
    
    NSString *fileName = @"TestDemo.tif";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getTiffToFaxWithCompletionBlock:fileName
                                             storage:nil
                                              folder:nil
                                             outPath:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to get tiff image for fax.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImageSaveAs_2 {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"TestDemo" withExtension:@"tif"];
    
    [self.imagingApi postImageSaveAs_2WithCompletionBlock:@"png"
                                                 newWidth:[NSNumber numberWithInt:300]
                                                newHeight:[NSNumber numberWithInt:300]
                                                        x:[NSNumber numberWithInt:96]
                                                        y:[NSNumber numberWithInt:96]
                                                rectWidth:[NSNumber numberWithInt:200]
                                               rectHeight:[NSNumber numberWithInt:200]
                                         rotateFlipMethod:@""
                                                     file:pathToFile
                                                  outPath:nil
                                        completionHandler:^(NSURL *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to perform scaling, cropping and flipping of an image in single request.");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageBmp {
    
    NSString *fileName = @"sample.bmp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageBmpWithCompletionBlock:fileName
                                       bitsPerPixel:[NSNumber numberWithInt:24]
                               horizontalResolution:[NSNumber numberWithInt:300]
                                 verticalResolution:[NSNumber numberWithInt:300]
                                        fromScratch:nil
                                            outPath:nil
                                             folder:nil
                                            storage:nil
                                  completionHandler:^(NSURL *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update parameters of bmp image.");
                                      [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetCropImage {
    
    NSString *fileName = @"aspose.jpg";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getCropImageWithCompletionBlock:fileName
                                              format:@"png"
                                                   x:[NSNumber numberWithInt:30]
                                                   y:[NSNumber numberWithInt:40]
                                               width:[NSNumber numberWithInt:100]
                                              height:[NSNumber numberWithInt:100]
                                             outPath:nil
                                              folder:nil
                                             storage:nil
                                   completionHandler:^(NSURL *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to crop existing image.");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageFrame {
    
    NSString *fileName = @"sample-multi.tif";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageFrameWithCompletionBlock:fileName
                                              frameId:[NSNumber numberWithInt:1]
                                             newWidth:nil
                                            newHeight:nil
                                                    x:nil
                                                    y:nil
                                            rectWidth:nil
                                           rectHeight:nil
                                     rotateFlipMethod:nil
                                      saveOtherFrames:nil
                                              outPath:nil
                                               folder:nil
                                              storage:nil
                                    completionHandler:^(NSURL *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to get separate frame of tiff image.");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageFrameProperties {
    
    NSString *fileName = @"TestDemo.tif";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageFramePropertiesWithCompletionBlock:fileName
                                                        frameId:[NSNumber numberWithInt:0]
                                                         folder:nil
                                                        storage:nil
                                              completionHandler:^(ASPImagingResponse *output, NSError *error) {
                                                  XCTAssertNotNil(output, @"Failed to get properties of a tiff frame.");
                                                  XCTAssertEqualObjects(output.status, @"OK");
                                                  [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageGif {
    
    NSString *fileName = @"sample.gif";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageGifWithCompletionBlock:fileName
                               backgroundColorIndex:nil
                                    colorResolution:nil
                                         hasTrailer:nil
                                         interlaced:nil
                                    isPaletteSorted:nil
                                   pixelAspectRatio:nil
                                        fromScratch:nil
                                            outPath:nil
                                             folder:nil
                                            storage:nil
                                  completionHandler:^(NSURL *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update parameters of GIF image.");
                                      [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageJpg {
    
    NSString *fileName = @"aspose.jpg";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageJpgWithCompletionBlock:fileName
                                            quality:[NSNumber numberWithInt:100]
                                    compressionType:@"progressive"
                                        fromScratch:nil
                                            outPath:nil
                                             folder:nil
                                            storage:nil
                                  completionHandler:^(NSURL *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update parameters of jpg image.");
                                      [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImagePng {
    
    NSString *fileName = @"aspose_imaging_for_cloud.png";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImagePngWithCompletionBlock:fileName
                                        fromScratch:[NSNumber numberWithBool:YES]
                                            outPath:nil
                                             folder:nil
                                            storage:nil
                                  completionHandler:^(NSURL *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update parameters of png image.");
                                      [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageProperties {
    
    NSString *fileName = @"demo.tif";
    [self uploadFile:fileName];

    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImagePropertiesWithCompletionBlock:fileName
                                                    folder:nil
                                                   storage:nil
                                         completionHandler:^(ASPImagingResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to get properties of an image.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImagePsd {
    
    NSString *fileName = @"sample.psd";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImagePsdWithCompletionBlock:fileName
                                      channelsCount:[NSNumber numberWithInt:3]
                                  compressionMethod:@"rle"
                                        fromScratch:nil
                                            outPath:nil
                                             folder:nil
                                            storage:nil
                                  completionHandler:^(NSURL *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update parameters of psd image.");
                                      [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetChangeImageScale {
    
    NSString *fileName = @"aspose_imaging_for_cloud.png";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getChangeImageScaleWithCompletionBlock:fileName
                                                     format:@"jpg"
                                                   newWidth:[NSNumber numberWithInt:200]
                                                  newHeight:[NSNumber numberWithInt:200]
                                                    outPath:nil
                                                     folder:nil
                                                    storage:nil
                                          completionHandler:^(NSURL *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to change scale of an existing image.");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageRotateFlip {
    
    NSString *fileName = @"aspose.jpg";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageRotateFlipWithCompletionBlock:fileName
                                                    format:@"png"
                                                    method:@"Rotate180FlipX"
                                                   outPath:nil
                                                    folder:nil
                                                   storage:nil
                                         completionHandler:^(NSURL *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to rotate and flip existing image");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageSaveAs {
    
    NSString *fileName = @"aspose.jpg";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getImageSaveAsWithCompletionBlock:fileName
                                                format:@"png"
                                               outPath:nil
                                                folder:nil
                                               storage:nil
                                     completionHandler:^(NSURL *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to export existing image to another format.");
                                         [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetUpdatedImage {
    
    NSString *fileName = @"TestDemo.tif";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.imagingApi getUpdatedImageWithCompletionBlock:fileName
                                                 format:@"png"
                                               newWidth:[NSNumber numberWithInt:300]
                                              newHeight:[NSNumber numberWithInt:300]
                                                      x:[NSNumber numberWithInt:96]
                                                      y:[NSNumber numberWithInt:96]
                                              rectWidth:[NSNumber numberWithInt:200]
                                             rectHeight:[NSNumber numberWithInt:200]
                                       rotateFlipMethod:@""
                                                outPath:nil
                                                 folder:nil
                                                storage:nil
                                      completionHandler:^(NSURL *output, NSError *error) {
                                          XCTAssertNotNil(output, @"Failed to perform scaling, cropping and flipping of an image in single request.");
                                          [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

@end
