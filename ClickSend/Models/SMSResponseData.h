//
//  SMSResponseData.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_SMSRESPONSEDATA
#define APIMATIC_SMSRESPONSEDATA

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "SmsMessage.h"
#import "Currency.h"


//protocol defined for deserialization of JSON
@protocol SMSResponseData
@end

@interface SMSResponseData : JSONModel

/**
* TODO: Write general description for this field
*/
@property int totalPrice;

/**
* TODO: Write general description for this field
*/
@property int totalCount;

/**
* TODO: Write general description for this field
*/
@property int queuedCount;

/**
* TODO: Write general description for this field
*/
@property NSArray<SmsMessage> * messages;

/**
* TODO: Write general description for this field
*/
@property NSArray<Currency> * currency;


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