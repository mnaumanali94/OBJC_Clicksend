//
//  SubaccountController.h
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

@interface SubaccountController : BaseController

/**
* Completion block definition for asynchronous call to Get Subaccounts */
typedef void (^CompletedGetSubaccounts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all subaccounts
*/
- (void) getSubaccountsWithCompletionBlock:(CompletedGetSubaccounts) onCompleted;

/**
* Completion block definition for asynchronous call to Create Subaccount */
typedef void (^CompletedPostCreateSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create new subaccount
* @param    apiUsername    Required parameter: Your new api username.
* @param    password    Required parameter: Your new password
* @param    email    Required parameter: Your new email.
* @param    phoneNumber    Required parameter: Your phone number in E.164 format.
* @param    firstName    Required parameter: Your firstname
* @param    lastName    Required parameter: Your lastname
* @param    accessUsers    Optional parameter: Your access users flag value, must be 1 or 0.
* @param    accessBilling    Optional parameter: Your access billing flag value, must be 1 or 0.
* @param    accessReporting    Optional parameter: Your access reporting flag value, must be 1 or 0.
* @param    accessContacts    Optional parameter: Your access contacts flag value, must be 1 or 0.
* @param    accessSettings    Optional parameter: Your access settings flag value, must be 1 or 0.
*/
- (void) createSubaccountAsyncWithApiUsername:(NSArray*) apiUsername
                password:(NSString*) password
                email:(NSString*) email
                phoneNumber:(NSString*) phoneNumber
                firstName:(NSString*) firstName
                lastName:(NSString*) lastName
                accessUsers:(NSNumber*) accessUsers
                accessBilling:(NSNumber*) accessBilling
                accessReporting:(NSNumber*) accessReporting
                accessContacts:(NSNumber*) accessContacts
                accessSettings:(NSNumber*) accessSettings
                completionBlock:(CompletedPostCreateSubaccount) onCompleted;

/**
* Completion block definition for asynchronous call to Get Subaccount */
typedef void (^CompletedGetSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get specific subaccount
* @param    subaccountId    Required parameter: Example: 
*/
- (void) getSubaccountAsyncWithSubaccountId:(int) subaccountId
                completionBlock:(CompletedGetSubaccount) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Subaccount */
typedef void (^CompletedDeleteSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete a subaccount
* @param    subaccountId    Required parameter: Example: 
*/
- (void) deleteSubaccountAsyncWithSubaccountId:(int) subaccountId
                completionBlock:(CompletedDeleteSubaccount) onCompleted;

/**
* Completion block definition for asynchronous call to Regenerate Api Key */
typedef void (^CompletedPutRegenerateApiKey)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Regenerate an API Key
* @param    subaccountId    Required parameter: Example: 
*/
- (void) regenerateApiKeyAsyncWithSubaccountId:(int) subaccountId
                completionBlock:(CompletedPutRegenerateApiKey) onCompleted;

/**
* Completion block definition for asynchronous call to Update Subaccount */
typedef void (^CompletedPutUpdateSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update subaccount
* @param    subaccountId    Required parameter: Example: 
* @param    password    Optional parameter: Example: 
* @param    email    Optional parameter: Example: 
* @param    phoneNumber    Optional parameter: Example: 
* @param    firstName    Optional parameter: Example: 
* @param    lastName    Optional parameter: Example: 
* @param    accessUsers    Optional parameter: Example: true
* @param    accessBilling    Optional parameter: Example: true
* @param    accessReporting    Optional parameter: Example: true
* @param    accessContacts    Optional parameter: Example: false
* @param    accessSettings    Optional parameter: Example: true
*/
- (void) updateSubaccountAsyncWithSubaccountId:(int) subaccountId
                password:(NSString*) password
                email:(NSString*) email
                phoneNumber:(NSString*) phoneNumber
                firstName:(NSString*) firstName
                lastName:(NSString*) lastName
                accessUsers:(NSNumber*) accessUsers
                accessBilling:(NSNumber*) accessBilling
                accessReporting:(NSNumber*) accessReporting
                accessContacts:(NSNumber*) accessContacts
                accessSettings:(NSNumber*) accessSettings
                completionBlock:(CompletedPutUpdateSubaccount) onCompleted;

@end