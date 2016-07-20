//
//  ResellerAccountController.h
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

@interface ResellerAccountController : BaseController

/**
* Completion block definition for asynchronous call to Get Reseller Accounts */
typedef void (^CompletedGetResellerAccounts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of reseller accounts
*/
- (void) getResellerAccountsWithCompletionBlock:(CompletedGetResellerAccounts) onCompleted;

/**
* Completion block definition for asynchronous call to Create Reseller Account */
typedef void (^CompletedPostCreateResellerAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create reseller account
* @param    username    Required parameter: Example: 
* @param    password    Required parameter: Example: 
* @param    userEmail    Required parameter: Example: 
* @param    userPhone    Required parameter: Example: 
* @param    userFirstName    Required parameter: Example: 
* @param    userLastName    Required parameter: Example: 
* @param    accountName    Required parameter: Example: 
* @param    country    Required parameter: Example: 
*/
- (void) createResellerAccountAsyncWithUsername:(NSString*) username
                password:(NSString*) password
                userEmail:(NSString*) userEmail
                userPhone:(NSString*) userPhone
                userFirstName:(NSString*) userFirstName
                userLastName:(NSString*) userLastName
                accountName:(NSString*) accountName
                country:(NSString*) country
                completionBlock:(CompletedPostCreateResellerAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Get Reseller Account */
typedef void (^CompletedGetResellerAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get Reseller Account
* @param    clientUserId    Required parameter: Example: 
*/
- (void) getResellerAccountAsyncWithClientUserId:(NSString*) clientUserId
                completionBlock:(CompletedGetResellerAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Update Reseller Account */
typedef void (^CompletedPutUpdateResellerAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Reseller Account
* @param    clientUserId    Required parameter: Example: 
* @param    username    Required parameter: Example: 
* @param    password    Required parameter: Example: 
* @param    userEmail    Required parameter: Example: 
* @param    userPhone    Required parameter: Example: 
* @param    userFirstName    Required parameter: Example: 
* @param    userLastName    Required parameter: Example: 
* @param    accountName    Required parameter: Example: 
* @param    country    Required parameter: Example: 
*/
- (void) updateResellerAccountAsyncWithClientUserId:(NSString*) clientUserId
                username:(NSString*) username
                password:(NSString*) password
                userEmail:(NSString*) userEmail
                userPhone:(NSString*) userPhone
                userFirstName:(NSString*) userFirstName
                userLastName:(NSString*) userLastName
                accountName:(NSString*) accountName
                country:(NSString*) country
                completionBlock:(CompletedPutUpdateResellerAccount) onCompleted;

@end