//
//  NumberController.h
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

@interface NumberController : BaseController

/**
* Completion block definition for asynchronous call to Get Dedicated Numbers */
typedef void (^CompletedGetDedicatedNumbers)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all dedicated numbers
*/
- (void) getDedicatedNumbersWithCompletionBlock:(CompletedGetDedicatedNumbers) onCompleted;

/**
* Completion block definition for asynchronous call to Purchase Dedicated Number */
typedef void (^CompletedPostPurchaseDedicatedNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Buy dedicated number
* @param    dedicatedNumber    Required parameter: Example: 
*/
- (void) purchaseDedicatedNumberAsyncWithDedicatedNumber:(NSString*) dedicatedNumber
                completionBlock:(CompletedPostPurchaseDedicatedNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Get Dedicated Numbers By Country */
typedef void (^CompletedGetDedicatedNumbersByCountry)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all dedicated numbers by country
* @param    country    Required parameter: Example: 
* @param    search    Optional parameter: Your search pattern or query.
* @param    searchType    Optional parameter: Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with.
*/
- (void) getDedicatedNumbersByCountryAsyncWithCountry:(NSString*) country
                search:(NSString*) search
                searchType:(NSNumber*) searchType
                completionBlock:(CompletedGetDedicatedNumbersByCountry) onCompleted;

@end