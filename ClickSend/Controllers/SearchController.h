//
//  SearchController.h
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

@interface SearchController : BaseController

/**
* Completion block definition for asynchronous call to Search Contact List */
typedef void (^CompletedGetSearchContactList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of searched contact list
* @param    q    Required parameter: Your keyword or query.
*/
- (void) searchContactListAsyncWithQ:(NSString*) q
                completionBlock:(CompletedGetSearchContactList) onCompleted;

@end