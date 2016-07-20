//
//  DeliveryReceipt.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_DELIVERYRECEIPT
#define APIMATIC_DELIVERYRECEIPT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeliveryReceipt
@end

@interface DeliveryReceipt : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* timestampSend;

/**
* TODO: Write general description for this field
*/
@property NSString* timestamp;

/**
* TODO: Write general description for this field
*/
@property NSString* messageId;

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
@property NSString* customString;

/**
* TODO: Write general description for this field
*/
@property NSString* messageType;


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