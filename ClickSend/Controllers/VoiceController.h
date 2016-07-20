//
//  VoiceController.h
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

@interface VoiceController : BaseController

/**
* Completion block definition for asynchronous call to Send Voice */
typedef void (^CompletedPostSendVoice)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    messages    Required parameter: Example: 
*/
- (void) sendVoiceAsyncWithMessages:(NSArray*) messages
                completionBlock:(CompletedPostSendVoice) onCompleted;

/**
* Completion block definition for asynchronous call to Calculate Price */
typedef void (^CompletedPostCalculatePrice)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Calculate voice price
* @param    parameters    Required parameter: Example: 
*/
- (void) calculatePriceAsyncWithParameters:(NSArray*) parameters
                completionBlock:(CompletedPostCalculatePrice) onCompleted;

/**
* Completion block definition for asynchronous call to Get Voice Languages */
typedef void (^CompletedGetVoiceLanguages)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all voice languages
*/
- (void) getVoiceLanguagesWithCompletionBlock:(CompletedGetVoiceLanguages) onCompleted;

/**
* Completion block definition for asynchronous call to Get Voice History */
typedef void (^CompletedGetVoiceHistory)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all voice history
* @param    dateFrom    Optional parameter: Example: 
* @param    dateTo    Optional parameter: Example: 
*/
- (void) getVoiceHistoryAsyncWithDateFrom:(NSNumber*) dateFrom
                dateTo:(NSNumber*) dateTo
                completionBlock:(CompletedGetVoiceHistory) onCompleted;

/**
* Completion block definition for asynchronous call to Get Voice Receipts */
typedef void (^CompletedGetVoiceReceipts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all voice receipts
*/
- (void) getVoiceReceiptsWithCompletionBlock:(CompletedGetVoiceReceipts) onCompleted;

/**
* Completion block definition for asynchronous call to Cancel Voice Message */
typedef void (^CompletedPutCancelVoiceMessage)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update voice message status as cancelled
* @param    messageId    Required parameter: Example: 
*/
- (void) cancelVoiceMessageAsyncWithMessageId:(NSString*) messageId
                completionBlock:(CompletedPutCancelVoiceMessage) onCompleted;

/**
* Completion block definition for asynchronous call to Cancel Voice Messages */
typedef void (^CompletedPutCancelVoiceMessages)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update all voice messages as cancelled
*/
- (void) cancelVoiceMessagesWithCompletionBlock:(CompletedPutCancelVoiceMessages) onCompleted;

/**
* Completion block definition for asynchronous call to Export Voice History */
typedef void (^CompletedGetExportVoiceHistory)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Export voice history
* @param    filename    Required parameter: Example: 
*/
- (void) exportVoiceHistoryAsyncWithFilename:(NSString*) filename
                completionBlock:(CompletedGetExportVoiceHistory) onCompleted;

@end