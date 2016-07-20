//
//  TransferCreditController.h
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

@interface TransferCreditController : BaseController

/**
* Completion block definition for asynchronous call to Transfer Credit */
typedef void (^CompletedPutTransferCredit)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Transfer Credit
* @param    clientUserId    Required parameter: Example: 
* @param    balance    Required parameter: Example: 
* @param    currency    Required parameter: Example: 
*/
- (void) transferCreditAsyncWithClientUserId:(NSString*) clientUserId
                balance:(int) balance
                currency:(NSString*) currency
                completionBlock:(CompletedPutTransferCredit) onCompleted;

@end