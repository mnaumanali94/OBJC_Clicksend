//
//  AccountController.h
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

@interface AccountController : BaseController

/**
* Completion block definition for asynchronous call to Get Account */
typedef void (^CompletedGetAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get account details
*/
- (void) getAccountWithCompletionBlock:(CompletedGetAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Create Account */
typedef void (^CompletedPostCreateAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create An Account
* @param    username    Required parameter: Your username
* @param    password    Required parameter: Your password
* @param    userPhone    Required parameter: Your phone number in E.164 format.
* @param    userEmail    Required parameter: Your email
* @param    userFirstName    Required parameter: Your firstname
* @param    userLastName    Required parameter: Your lastname
* @param    accountName    Required parameter: Your delivery to value.
* @param    country    Required parameter: Your country
*/
- (void) createAccountAsyncWithUsername:(NSString*) username
                password:(NSString*) password
                userPhone:(NSString*) userPhone
                userEmail:(NSString*) userEmail
                userFirstName:(NSString*) userFirstName
                userLastName:(NSString*) userLastName
                accountName:(NSString*) accountName
                country:(NSString*) country
                completionBlock:(CompletedPostCreateAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Activation Token */
typedef void (^CompletedPutActivationToken)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send account activation token
* @param    userPhone    Required parameter: Your phone number
* @param    type    Required parameter: Activation type
* @param    country    Required parameter: Your country
*/
- (void) activationTokenAsyncWithUserPhone:(NSString*) userPhone
                type:(NSString*) type
                country:(NSString*) country
                completionBlock:(CompletedPutActivationToken) onCompleted;

/**
* Completion block definition for asynchronous call to Verify Account */
typedef void (^CompletedPutVerifyAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Verify new account
* @param    activationToken    Required parameter: Example: 
*/
- (void) verifyAccountAsyncWithActivationToken:(NSString*) activationToken
                completionBlock:(CompletedPutVerifyAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Forgot Username */
typedef void (^CompletedPutForgotUsername)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Forgot username
* @param    email    Optional parameter: Example: 
* @param    phoneNumber    Optional parameter: Example: 
* @param    country    Optional parameter: Example: 
*/
- (void) forgotUsernameAsyncWithEmail:(NSString*) email
                phoneNumber:(NSString*) phoneNumber
                country:(NSString*) country
                completionBlock:(CompletedPutForgotUsername) onCompleted;

/**
* Completion block definition for asynchronous call to Forgot Password */
typedef void (^CompletedPutForgotPassword)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Forgot password
* @param    username    Required parameter: Example: 
*/
- (void) forgotPasswordAsyncWithUsername:(NSString*) username
                completionBlock:(CompletedPutForgotPassword) onCompleted;

/**
* Completion block definition for asynchronous call to Verify Forgot Password */
typedef void (^CompletedPutVerifyForgotPassword)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Verify forgot password
* @param    subaccountId    Required parameter: Your subaccount id.
* @param    activationToken    Required parameter: Your email activation token.
* @param    password    Required parameter: Your new password.
*/
- (void) verifyForgotPasswordAsyncWithSubaccountId:(int) subaccountId
                activationToken:(NSString*) activationToken
                password:(NSString*) password
                completionBlock:(CompletedPutVerifyForgotPassword) onCompleted;

@end