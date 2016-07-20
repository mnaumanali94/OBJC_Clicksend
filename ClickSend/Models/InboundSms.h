//
//  InboundSms.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_INBOUNDSMS
#define APIMATIC_INBOUNDSMS

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol InboundSms
@end

@interface InboundSms : JSONModel

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
@property NSString* originalBody;

/**
* TODO: Write general description for this field
*/
@property NSString* to;

/**
* TODO: Write general description for this field
*/
@property NSString* customString;

/**
* TODO: Write general description for this field
*/
@property NSString* originalMessageId;

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
@property NSNumber* timestamp;


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