//
//  ResponseData.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_RESPONSEDATA
#define APIMATIC_RESPONSEDATA

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ResponseData
@end

@interface ResponseData : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSNumber* total;

/**
* TODO: Write general description for this field
*/
@property NSNumber* perPage;

/**
* TODO: Write general description for this field
*/
@property NSNumber* currentPage;

/**
* TODO: Write general description for this field
*/
@property NSNumber* lastPage;

/**
* TODO: Write general description for this field
*/
@property NSString* nextPageUrl;

/**
* TODO: Write general description for this field
*/
@property NSString* prevPageUrl;

/**
* TODO: Write general description for this field
*/
@property NSNumber* from;

/**
* TODO: Write general description for this field
*/
@property NSNumber* to;


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