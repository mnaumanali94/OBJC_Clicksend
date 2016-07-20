//
//  CountriesController.h
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

@interface CountriesController : BaseController

/**
* Completion block definition for asynchronous call to Get Countries */
typedef void (^CompletedGetCountries)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all countries
*/
- (void) getCountriesWithCompletionBlock:(CompletedGetCountries) onCompleted;

@end