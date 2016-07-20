//
//  DeliveryReceipt.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "DeliveryReceipt.h"

@implementation DeliveryReceipt

/**
* TODO: Write general description for this method
*/
@synthesize timestampSend;

/**
* TODO: Write general description for this method
*/
@synthesize timestamp;

/**
* TODO: Write general description for this method
*/
@synthesize messageId;

/**
* TODO: Write general description for this method
*/
@synthesize statusCode;

/**
* TODO: Write general description for this method
*/
@synthesize statusText;

/**
* TODO: Write general description for this method
*/
@synthesize errorCode;

/**
* TODO: Write general description for this method
*/
@synthesize errorText;

/**
* TODO: Write general description for this method
*/
@synthesize customString;

/**
* TODO: Write general description for this method
*/
@synthesize messageType;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"timestamp_send": @"timestampSend",
        @"timestamp": @"timestamp",
        @"message_id": @"messageId",
        @"status_code": @"statusCode",
        @"status_text": @"statusText",
        @"error_code": @"errorCode",
        @"error_text": @"errorText",
        @"custom_string": @"customString",
        @"_message_type": @"messageType"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end