//
//  DeliveryReceiptsResponse.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef APIMATIC_DELIVERYRECEIPTSRESPONSE
#define APIMATIC_DELIVERYRECEIPTSRESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Response.h"
#import "DeliveryReceiptsData.h"


//protocol defined for deserialization of JSON
@protocol DeliveryReceiptsResponse
@end

@interface DeliveryReceiptsResponse : Response

/**
* TODO: Write general description for this field
*/
@property DeliveryReceiptsData* data;


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