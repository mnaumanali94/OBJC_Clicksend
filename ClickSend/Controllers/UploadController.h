//
//  UploadController.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface UploadController : BaseController

/**
* Completion block definition for asynchronous call to Upload File */
typedef void (^CompletedPostUploadFile)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Upload a file
* @param    filename    Required parameter: Example: 
*/
- (void) uploadFileAsyncWithFilename:(NSURL*) filename
                completionBlock:(CompletedPostUploadFile) onCompleted;

@end