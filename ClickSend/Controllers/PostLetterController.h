//
//  PostLetterController.h
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

@interface PostLetterController : BaseController

/**
* Completion block definition for asynchronous call to Send Post Letter */
typedef void (^CompletedPostSendPostLetter)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send post letter
* @param    attributes    Required parameter: Example: 
*/
- (void) sendPostLetterAsyncWithAttributes:(NSArray*) attributes
                completionBlock:(CompletedPostSendPostLetter) onCompleted;

/**
* Completion block definition for asynchronous call to Calculate Price */
typedef void (^CompletedPostCalculatePrice)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Calculate post letter price
* @param    attributes    Required parameter: Example: 
*/
- (void) calculatePriceAsyncWithAttributes:(NSArray*) attributes
                completionBlock:(CompletedPostCalculatePrice) onCompleted;

/**
* Completion block definition for asynchronous call to Get Post Letter History */
typedef void (^CompletedGetPostLetterHistory)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all post letter history
*/
- (void) getPostLetterHistoryWithCompletionBlock:(CompletedGetPostLetterHistory) onCompleted;

/**
* Completion block definition for asynchronous call to Export Post Letter History */
typedef void (^CompletedGetExportPostLetterHistory)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* export post letter history
* @param    filename    Required parameter: Example: 
*/
- (void) exportPostLetterHistoryAsyncWithFilename:(NSString*) filename
                completionBlock:(CompletedGetExportPostLetterHistory) onCompleted;

@end