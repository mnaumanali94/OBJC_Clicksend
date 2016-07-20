//
//  ReferralAccountController.h
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

@interface ReferralAccountController : BaseController

/**
* Completion block definition for asynchronous call to Get Referral Accounts */
typedef void (^CompletedGetReferralAccounts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all referral accounts
*/
- (void) getReferralAccountsWithCompletionBlock:(CompletedGetReferralAccounts) onCompleted;

@end