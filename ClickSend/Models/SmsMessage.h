//
//  SmsMessage.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_SMSMESSAGE
#define APIMATIC_SMSMESSAGE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol SmsMessage
@end

@interface SmsMessage : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* from;

/**
* TODO: Write general description for this field
*/
@property NSString* body;

/**
* TODO: Write general description for this field
*/
@property NSString* to;

/**
* TODO: Write general description for this field
*/
@property NSString* source;

/**
* TODO: Write general description for this field
*/
@property NSNumber* schedule;

/**
* TODO: Write general description for this field
*/
@property NSString* customString;

/**
* TODO: Write general description for this field
*/
@property NSNumber* listId;

/**
* TODO: Write general description for this field
*/
@property NSString* fromEmail;

/**
* TODO: Write general description for this field
*/
@property NSString* country;

/**
* TODO: Write general description for this field
*/
@property NSString* direction;

/**
* TODO: Write general description for this field
*/
@property NSNumber* date;

/**
* TODO: Write general description for this field
*/
@property NSString* messageId;

/**
* TODO: Write general description for this field
*/
@property NSNumber* messageParts;

/**
* TODO: Write general description for this field
*/
@property NSNumber* messagePrice;

/**
* TODO: Write general description for this field
*/
@property NSNumber* userId;

/**
* TODO: Write general description for this field
*/
@property NSNumber* subaccountId;

/**
* TODO: Write general description for this field
*/
@property NSString* carrier;

/**
* TODO: Write general description for this field
*/
@property NSString* status;


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