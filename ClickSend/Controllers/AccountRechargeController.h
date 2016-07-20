//
//  AccountRechargeController.h
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

@interface AccountRechargeController : BaseController

/**
* Completion block definition for asynchronous call to Get Credit Card Info */
typedef void (^CompletedGetCreditCardInfo)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get Credit Card info
*/
- (void) getCreditCardInfoWithCompletionBlock:(CompletedGetCreditCardInfo) onCompleted;

/**
* Completion block definition for asynchronous call to Update Credit Card Info */
typedef void (^CompletedPutUpdateCreditCardInfo)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update credit card info
* @param    number    Required parameter: Example: 
* @param    expiryMonth    Required parameter: Example: 
* @param    expiryYear    Required parameter: Example: 
* @param    cvc    Required parameter: Example: 
* @param    name    Required parameter: Example: 
*/
- (void) updateCreditCardInfoAsyncWithNumber:(NSString*) number
                expiryMonth:(int) expiryMonth
                expiryYear:(int) expiryYear
                cvc:(int) cvc
                name:(NSString*) name
                completionBlock:(CompletedPutUpdateCreditCardInfo) onCompleted;

/**
* Completion block definition for asynchronous call to Get Packages List */
typedef void (^CompletedGetPackagesList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of all packages
* @param    country    Optional parameter: Example: 
*/
- (void) getPackagesListAsyncWithCountry:(NSString*) country
                completionBlock:(CompletedGetPackagesList) onCompleted;

/**
* Completion block definition for asynchronous call to Purchase package */
typedef void (^CompletedPutPurchasePackage)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Purchase a package
* @param    packageId    Required parameter: Example: 
*/
- (void) purchasePackageAsyncWithPackageId:(int) packageId
                completionBlock:(CompletedPutPurchasePackage) onCompleted;

/**
* Completion block definition for asynchronous call to Get Transactions */
typedef void (^CompletedGetTransactions)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all transactions
*/
- (void) getTransactionsWithCompletionBlock:(CompletedGetTransactions) onCompleted;

/**
* Completion block definition for asynchronous call to Get Transaction */
typedef void (^CompletedGetTransaction)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get specific Transaction
* @param    transactionId    Required parameter: Example: 
*/
- (void) getTransactionAsyncWithTransactionId:(NSString*) transactionId
                completionBlock:(CompletedGetTransaction) onCompleted;

@end