//
//  PostReturnAddressController.h
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

@interface PostReturnAddressController : BaseController

/**
* Completion block definition for asynchronous call to Create Post Return Address */
typedef void (^CompletedPostCreatePostReturnAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create post return address
* @param    addressName    Required parameter: Example: 
* @param    addressLine1    Required parameter: Example: 
* @param    addressLine2    Required parameter: Example: 
* @param    addressCity    Required parameter: Example: 
* @param    addressState    Required parameter: Example: 
* @param    addressPostalCode    Required parameter: Example: 
* @param    addressCountry    Required parameter: Example: 
*/
- (void) createPostReturnAddressAsyncWithAddressName:(NSString*) addressName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                completionBlock:(CompletedPostCreatePostReturnAddress) onCompleted;

/**
* Completion block definition for asynchronous call to Get Post Return Addresses */
typedef void (^CompletedGetPostReturnAddresses)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get list of post return addresses
*/
- (void) getPostReturnAddressesWithCompletionBlock:(CompletedGetPostReturnAddresses) onCompleted;

/**
* Completion block definition for asynchronous call to Get Post Return Address */
typedef void (^CompletedGetPostReturnAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get specific post return address
* @param    returnAddressId    Required parameter: Example: 
*/
- (void) getPostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                completionBlock:(CompletedGetPostReturnAddress) onCompleted;

/**
* Completion block definition for asynchronous call to Update Post Return Address */
typedef void (^CompletedPutUpdatePostReturnAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update post return address
* @param    returnAddressId    Required parameter: Example: 
* @param    addressName    Required parameter: Example: 
* @param    addressLine1    Required parameter: Example: 
* @param    addressLine2    Required parameter: Example: 
* @param    addressCity    Required parameter: Example: 
* @param    addressState    Required parameter: Example: 
* @param    addressPostalCode    Required parameter: Example: 
* @param    addressCountry    Required parameter: Example: 
*/
- (void) updatePostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                addressName:(NSString*) addressName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                completionBlock:(CompletedPutUpdatePostReturnAddress) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Post Return Address */
typedef void (^CompletedDeletePostReturnAddress)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete specific post return address
* @param    returnAddressId    Required parameter: Example: 
*/
- (void) deletePostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                completionBlock:(CompletedDeletePostReturnAddress) onCompleted;

@end