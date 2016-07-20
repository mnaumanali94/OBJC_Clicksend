//
//  SMSController.h
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
#import "SMSResponse.h"
#import "SmsMessageCollection.h"
#import "SMSHistoryResponse.h"
#import "DeliveryReceiptResponse.h"
#import "UrlModel.h"
#import "InboundMultiSmsResponse.h"
#import "InboundSmsResponse.h"
#import "ScheduledMessageResponse.h"
#import "DeliveryReceiptsResponse.h"

@interface SMSController : BaseController

/**
* Completion block definition for asynchronous call to Send Sms */
typedef void (^CompletedPostSendSms)(BOOL success, HttpContext* context, SMSResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    messages    Required parameter: Example: 
*/
- (void) sendSmsAsyncWithMessages:(SmsMessageCollection*) messages
                completionBlock:(CompletedPostSendSms) onCompleted;

/**
* Completion block definition for asynchronous call to Calculate Price */
typedef void (^CompletedPostCalculatePrice)(BOOL success, HttpContext* context, SMSResponse* response, NSError* error);

/**
* Calculate sms price
* @param    messages    Required parameter: Example: 
*/
- (void) calculatePriceAsyncWithMessages:(SmsMessageCollection*) messages
                completionBlock:(CompletedPostCalculatePrice) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sms History */
typedef void (^CompletedGetSmsHistory)(BOOL success, HttpContext* context, SMSHistoryResponse* response, NSError* error);

/**
* Get all sms history
* @param    dateFrom    Optional parameter: Start date
* @param    dateTo    Optional parameter: End date
*/
- (void) getSmsHistoryAsyncWithDateFrom:(NSNumber*) dateFrom
                dateTo:(NSNumber*) dateTo
                completionBlock:(CompletedGetSmsHistory) onCompleted;

/**
* Completion block definition for asynchronous call to Export History */
typedef void (^CompletedGetExportHistory)(BOOL success, HttpContext* context, SMSHistoryResponse* response, NSError* error);

/**
* Export all sms history
* @param    filename    Required parameter: Example: 
*/
- (void) exportHistoryAsyncWithFilename:(NSString*) filename
                completionBlock:(CompletedGetExportHistory) onCompleted;

/**
* Completion block definition for asynchronous call to Create Receipt */
typedef void (^CompletedPostCreateReceipt)(BOOL success, HttpContext* context, DeliveryReceiptResponse* response, NSError* error);

/**
* Add a delivery receipt
* @param    url    Required parameter: Your url
*/
- (void) createReceiptAsyncWithUrl:(UrlModel*) url
                completionBlock:(CompletedPostCreateReceipt) onCompleted;

/**
* Completion block definition for asynchronous call to Mark Receipts As Read */
typedef void (^CompletedPutMarkReceiptsAsRead)(BOOL success, HttpContext* context, DeliveryReceiptResponse* response, NSError* error);

/**
* Marked delivery receipts as read
* @param    dateBefore    Optional parameter: Example: 
*/
- (void) markReceiptsAsReadAsyncWithDateBefore:(NSNumber*) dateBefore
                completionBlock:(CompletedPutMarkReceiptsAsRead) onCompleted;

/**
* Completion block definition for asynchronous call to Get Inbound Sms */
typedef void (^CompletedGetInboundSms)(BOOL success, HttpContext* context, InboundMultiSmsResponse* response, NSError* error);

/**
* Get all inbound sms
*/
- (void) getInboundSmsWithCompletionBlock:(CompletedGetInboundSms) onCompleted;

/**
* Completion block definition for asynchronous call to Create Inbound Sms */
typedef void (^CompletedPostCreateInboundSms)(BOOL success, HttpContext* context, InboundSmsResponse* response, NSError* error);

/**
* Create inbound sms
* @param    url    Required parameter: Your url
*/
- (void) createInboundSmsAsyncWithUrl:(UrlModel*) url
                completionBlock:(CompletedPostCreateInboundSms) onCompleted;

/**
* Completion block definition for asynchronous call to Mark Inbound Sms As Read */
typedef void (^CompletedPutMarkInboundSmsAsRead)(BOOL success, HttpContext* context, InboundSmsResponse* response, NSError* error);

/**
* Marked all inbound sms as read
* @param    dateBefore    Required parameter: Example: 
*/
- (void) markInboundSmsAsReadAsyncWithDateBefore:(int) dateBefore
                completionBlock:(CompletedPutMarkInboundSmsAsRead) onCompleted;

/**
* Completion block definition for asynchronous call to Cancel Scheduled Sms */
typedef void (^CompletedPutCancelScheduledSms)(BOOL success, HttpContext* context, ScheduledMessageResponse* response, NSError* error);

/**
* Update scheduled message as cancel
* @param    messageId    Required parameter: Example: 
*/
- (void) cancelScheduledSmsAsyncWithMessageId:(NSString*) messageId
                completionBlock:(CompletedPutCancelScheduledSms) onCompleted;

/**
* Completion block definition for asynchronous call to Cancel All Scheduled Sms */
typedef void (^CompletedPutCancelAllScheduledSms)(BOOL success, HttpContext* context, ScheduledMessageResponse* response, NSError* error);

/**
* Update all scheduled message as cancelled
*/
- (void) cancelAllScheduledSmsWithCompletionBlock:(CompletedPutCancelAllScheduledSms) onCompleted;

/**
* Completion block definition for asynchronous call to Create Sms Template */
typedef void (^CompletedPostCreateSmsTemplate)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create sms template
* @param    templateName    Required parameter: Your template name
* @param    body    Required parameter: Your template body
*/
- (void) createSmsTemplateAsyncWithTemplateName:(NSString*) templateName
                body:(NSString*) body
                completionBlock:(CompletedPostCreateSmsTemplate) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Sms Template */
typedef void (^CompletedDeleteSmsTemplate)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete sms template
* @param    templateId    Required parameter: Example: 
*/
- (void) deleteSmsTemplateAsyncWithTemplateId:(NSString*) templateId
                completionBlock:(CompletedDeleteSmsTemplate) onCompleted;

/**
* Completion block definition for asynchronous call to Update Sms Template */
typedef void (^CompletedPutUpdateSmsTemplate)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update sms template
* @param    templateId    Required parameter: Example: 
* @param    templateName    Required parameter: Example: 
* @param    body    Required parameter: Example: 
*/
- (void) updateSmsTemplateAsyncWithTemplateId:(int) templateId
                templateName:(NSString*) templateName
                body:(NSString*) body
                completionBlock:(CompletedPutUpdateSmsTemplate) onCompleted;

/**
* Completion block definition for asynchronous call to Get Delivery Receipts */
typedef void (^CompletedGetDeliveryReceipts)(BOOL success, HttpContext* context, DeliveryReceiptsResponse* response, NSError* error);

/**
* Get all delivery receipts
*/
- (void) getDeliveryReceiptsWithCompletionBlock:(CompletedGetDeliveryReceipts) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sms Templates */
typedef void (^CompletedGetSmsTemplates)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get lists of all sms templates
*/
- (void) getSmsTemplatesWithCompletionBlock:(CompletedGetSmsTemplates) onCompleted;

@end