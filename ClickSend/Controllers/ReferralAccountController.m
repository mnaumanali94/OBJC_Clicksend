//
//  ReferralAccountController.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "ReferralAccountController.h"

@implementation ReferralAccountController

/**
* Get all referral accounts
* @return	Returns the void response from the API call */
- (void) getReferralAccountsWithCompletionBlock:(CompletedGetReferralAccounts) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/referral/accounts"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ClickSendSDK"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setUsername: [Configuration Username]];
        [_request setPassword: [Configuration Key]];

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[APIError alloc] initWithReason: @"BAD_REQUEST"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"UNAUTHORIZED"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"FORBIDDEN"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"NOT_FOUND"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 405)
             _statusError = [[APIError alloc] initWithReason: @"METHOD_NOT_FOUND"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 429)
             _statusError = [[APIError alloc] initWithReason: @"TOO_MANY_REQUESTS"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if (_response.statusCode == 500)
             _statusError = [[APIError alloc] initWithReason: @"INTERNAL_SERVER_ERROR"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         else if((_response.statusCode < 200) || (_response.statusCode > 206)) //[200,206] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: _response.statusCode
                                                    andData: _response.rawBody];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
 
             NSString* _result = [(HttpStringResponse*)_response body];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end