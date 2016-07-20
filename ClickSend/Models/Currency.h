//
//  Currency.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_CURRENCY
#define APIMATIC_CURRENCY

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol Currency
@end

@interface Currency : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* currencyNameShort;

/**
* TODO: Write general description for this field
*/
@property NSString* currencyPrefixD;

/**
* TODO: Write general description for this field
*/
@property NSString* currencyPrefixC;

/**
* TODO: Write general description for this field
*/
@property NSString* currencyNameLong;


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