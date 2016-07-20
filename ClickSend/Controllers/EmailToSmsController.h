//
//  EmailToSmsController.h
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

@interface EmailToSmsController : BaseController

/**
* Completion block definition for asynchronous call to Create Allowed Address */
typedef void (^CompletedPostCreateAllowedAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create email to sms allowed address
* @param    emailAddress    Required parameter: Your email address.
* @param    from    Required parameter: Your phone number in E.164 format.
*/
- (void) createAllowedAddressAsyncWithEmailAddress:(NSString*) emailAddress
                from:(NSString*) from
                completionBlock:(CompletedPostCreateAllowedAddress) onCompleted;

/**
* Completion block definition for asynchronous call to Get Allowed Address */
typedef void (^CompletedGetAllowedAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of email to sms allowed addresses
*/
- (void) getAllowedAddressWithCompletionBlock:(CompletedGetAllowedAddress) onCompleted;

@end