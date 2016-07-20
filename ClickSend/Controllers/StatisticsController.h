//
//  StatisticsController.h
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

@interface StatisticsController : BaseController

/**
* Completion block definition for asynchronous call to Get Voice Statistics */
typedef void (^CompletedGetVoiceStatistics)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get voice statistics
*/
- (void) getVoiceStatisticsWithCompletionBlock:(CompletedGetVoiceStatistics) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sms Statistics */
typedef void (^CompletedGetSmsStatistics)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get sms statistics
*/
- (void) getSmsStatisticsWithCompletionBlock:(CompletedGetSmsStatistics) onCompleted;

@end