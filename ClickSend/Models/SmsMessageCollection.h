//
//  SmsMessageCollection.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_SMSMESSAGECOLLECTION
#define APIMATIC_SMSMESSAGECOLLECTION

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "SmsMessage.h"


//protocol defined for deserialization of JSON
@protocol SmsMessageCollection
@end

@interface SmsMessageCollection : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSArray<SmsMessage> * messages;


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