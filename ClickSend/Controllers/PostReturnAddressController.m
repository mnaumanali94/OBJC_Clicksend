//
//  PostReturnAddressController.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "PostReturnAddressController.h"

@implementation PostReturnAddressController

/**
* Create post return address
* @param    addressName    Required parameter: Example: 
* @param    addressLine1    Required parameter: Example: 
* @param    addressLine2    Required parameter: Example: 
* @param    addressCity    Required parameter: Example: 
* @param    addressState    Required parameter: Example: 
* @param    addressPostalCode    Required parameter: Example: 
* @param    addressCountry    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) createPostReturnAddressAsyncWithAddressName:(NSString*) addressName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                completionBlock:(CompletedPostCreatePostReturnAddress) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (addressName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressLine1 == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressLine1' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressLine2 == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressLine2' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressCity == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressCity' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressState == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressState' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressPostalCode == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressPostalCode' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressCountry == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressCountry' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/post/return-addresses"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"address_name": addressName,
                    @"address_line_1": addressLine1,
                    @"address_line_2": addressLine2,
                    @"address_city": addressCity,
                    @"address_state": addressState,
                    @"address_postal_code": addressPostalCode,
                    @"address_country": addressCountry
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ClickSendSDK"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
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

/**
* Get list of post return addresses
* @return	Returns the void response from the API call */
- (void) getPostReturnAddressesWithCompletionBlock:(CompletedGetPostReturnAddresses) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/post/return-addresses"];

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

/**
* Get specific post return address
* @param    returnAddressId    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) getPostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                completionBlock:(CompletedGetPostReturnAddress) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/post/return-addresses/{return_address_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"return_address_id": [NSNumber numberWithInteger: returnAddressId]
                }];

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
* @return	Returns the void response from the API call */
- (void) updatePostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                addressName:(NSString*) addressName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                completionBlock:(CompletedPutUpdatePostReturnAddress) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (addressName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressLine1 == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressLine1' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressLine2 == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressLine2' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressCity == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressCity' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressState == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressState' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressPostalCode == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressPostalCode' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (addressCountry == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'addressCountry' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/post/return-addresses/{return_address_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"return_address_id": [NSNumber numberWithInteger: returnAddressId]
                }];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"address_name": addressName,
                    @"address_line_1": addressLine1,
                    @"address_line_2": addressLine2,
                    @"address_city": addressCity,
                    @"address_state": addressState,
                    @"address_postal_code": addressPostalCode,
                    @"address_country": addressCountry
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ClickSendSDK"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] put: ^(HttpRequest* _request) 
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

/**
* Delete specific post return address
* @param    returnAddressId    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) deletePostReturnAddressAsyncWithReturnAddressId:(int) returnAddressId
                completionBlock:(CompletedDeletePostReturnAddress) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/post/return-addresses/{return_address_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"return_address_id": [NSNumber numberWithInteger: returnAddressId]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ClickSendSDK"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] delete: ^(HttpRequest* _request) 
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