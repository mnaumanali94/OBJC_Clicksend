//
//  SMSHistory.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_SMSHISTORY
#define APIMATIC_SMSHISTORY

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "SmsMessage.h"


//protocol defined for deserialization of JSON
@protocol SMSHistory
@end

@interface SMSHistory : SmsMessage

/**
* TODO: Write general description for this field
*/
@property NSString* statusCode;

/**
* TODO: Write general description for this field
*/
@property NSString* statusText;

/**
* TODO: Write general description for this field
*/
@property NSString* errorCode;

/**
* TODO: Write general description for this field
*/
@property NSString* errorText;

/**
* TODO: Write general description for this field
*/
@property int contactId;

/**
* TODO: Write general description for this field
*/
@property NSString* firstName;

/**
* TODO: Write general description for this field
*/
@property NSString* lastName;

/**
* TODO: Write general description for this field
*/
@property NSString* apiUsername;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif