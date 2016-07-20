//
//  SmsCampaignController.h
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

@interface SmsCampaignController : BaseController

/**
* Completion block definition for asynchronous call to Create Sms Campaign */
typedef void (^CompletedPostCreateSmsCampaign)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create sms campaign
* @param    listId    Required parameter: Example: 
* @param    name    Required parameter: Example: 
* @param    from    Required parameter: Example: 
* @param    body    Required parameter: Example: 
* @param    schedule    Optional parameter: Example: 
*/
- (void) createSmsCampaignAsyncWithListId:(int) listId
                name:(NSString*) name
                from:(NSString*) from
                body:(NSString*) body
                schedule:(NSNumber*) schedule
                completionBlock:(CompletedPostCreateSmsCampaign) onCompleted;

/**
* Completion block definition for asynchronous call to Calculate Price */
typedef void (^CompletedPostCalculatePrice)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Calculate price for sms campaign
* @param    listId    Required parameter: Example: 
* @param    name    Required parameter: Example: 
* @param    from    Required parameter: Example: 
* @param    body    Required parameter: Example: 
*/
- (void) calculatePriceAsyncWithListId:(int) listId
                name:(NSString*) name
                from:(NSString*) from
                body:(NSString*) body
                completionBlock:(CompletedPostCalculatePrice) onCompleted;

/**
* Completion block definition for asynchronous call to Update Sms Campaign */
typedef void (^CompletedPutUpdateSmsCampaign)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update sms campaign
* @param    smsCampaignId    Required parameter: Example: 
* @param    listId    Required parameter: Example: 
* @param    name    Required parameter: Example: 
* @param    from    Required parameter: Example: 
* @param    body    Required parameter: Example: 
* @param    schedule    Required parameter: Example: 
*/
- (void) updateSmsCampaignAsyncWithSmsCampaignId:(int) smsCampaignId
                listId:(int) listId
                name:(NSString*) name
                from:(NSString*) from
                body:(NSString*) body
                schedule:(NSString*) schedule
                completionBlock:(CompletedPutUpdateSmsCampaign) onCompleted;

/**
* Completion block definition for asynchronous call to Cancel Sms Campaign */
typedef void (^CompletedPutCancelSmsCampaign)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Cancel sms campaign
* @param    smsCampaignId    Required parameter: Example: 
*/
- (void) cancelSmsCampaignAsyncWithSmsCampaignId:(int) smsCampaignId
                completionBlock:(CompletedPutCancelSmsCampaign) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sms Campaigns */
typedef void (^CompletedGetSmsCampaigns)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of sms campaigns
*/
- (void) getSmsCampaignsWithCompletionBlock:(CompletedGetSmsCampaigns) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sms Campaign */
typedef void (^CompletedGetSmsCampaign)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get specific sms campaign
* @param    smsCampaignId    Required parameter: Example: 
*/
- (void) getSmsCampaignAsyncWithSmsCampaignId:(int) smsCampaignId
                completionBlock:(CompletedGetSmsCampaign) onCompleted;

@end