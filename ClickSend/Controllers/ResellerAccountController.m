//
//  ResellerAccountController.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "ResellerAccountController.h"

@implementation ResellerAccountController

/**
* Get list of reseller accounts
* @return	Returns the void response from the API call */
- (void) getResellerAccountsWithCompletionBlock:(CompletedGetResellerAccounts) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reseller/accounts"];

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
* Create reseller account
* @param    username    Required parameter: Example: 
* @param    password    Required parameter: Example: 
* @param    userEmail    Required parameter: Example: 
* @param    userPhone    Required parameter: Example: 
* @param    userFirstName    Required parameter: Example: 
* @param    userLastName    Required parameter: Example: 
* @param    accountName    Required parameter: Example: 
* @param    country    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) createResellerAccountAsyncWithUsername:(NSString*) username
                password:(NSString*) password
                userEmail:(NSString*) userEmail
                userPhone:(NSString*) userPhone
                userFirstName:(NSString*) userFirstName
                userLastName:(NSString*) userLastName
                accountName:(NSString*) accountName
                country:(NSString*) country
                completionBlock:(CompletedPostCreateResellerAccount) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (username == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'username' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (password == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'password' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userEmail == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userEmail' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userPhone == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userPhone' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userFirstName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userFirstName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userLastName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userLastName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (accountName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'accountName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (country == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'country' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reseller/accounts"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"username": username,
                    @"password": password,
                    @"user_email": userEmail,
                    @"user_phone": userPhone,
                    @"user_first_name": userFirstName,
                    @"user_last_name": userLastName,
                    @"account_name": accountName,
                    @"country": country
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
* Get Reseller Account
* @param    clientUserId    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) getResellerAccountAsyncWithClientUserId:(NSString*) clientUserId
                completionBlock:(CompletedGetResellerAccount) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (clientUserId == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'clientUserId' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reseller/accounts/{client_user_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"client_user_id": clientUserId
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
* Reseller Account
* @param    clientUserId    Required parameter: Example: 
* @param    username    Required parameter: Example: 
* @param    password    Required parameter: Example: 
* @param    userEmail    Required parameter: Example: 
* @param    userPhone    Required parameter: Example: 
* @param    userFirstName    Required parameter: Example: 
* @param    userLastName    Required parameter: Example: 
* @param    accountName    Required parameter: Example: 
* @param    country    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) updateResellerAccountAsyncWithClientUserId:(NSString*) clientUserId
                username:(NSString*) username
                password:(NSString*) password
                userEmail:(NSString*) userEmail
                userPhone:(NSString*) userPhone
                userFirstName:(NSString*) userFirstName
                userLastName:(NSString*) userLastName
                accountName:(NSString*) accountName
                country:(NSString*) country
                completionBlock:(CompletedPutUpdateResellerAccount) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (clientUserId == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'clientUserId' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (username == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'username' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (password == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'password' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userEmail == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userEmail' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userPhone == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userPhone' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userFirstName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userFirstName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (userLastName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'userLastName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (accountName == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'accountName' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    else if (country == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'country' is a required parameter and cannot be nil."
                                                    andCode: -1
                                                    andData: nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reseller/accounts/{client_user_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"client_user_id": clientUserId
                }];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"username": username,
                    @"password": password,
                    @"user_email": userEmail,
                    @"user_phone": userPhone,
                    @"user_first_name": userFirstName,
                    @"user_last_name": userLastName,
                    @"account_name": accountName,
                    @"country": country
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


@end