//
//  InboundSms.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "InboundSms.h"

@implementation InboundSms

/**
* TODO: Write general description for this method
*/
@synthesize from;

/**
* TODO: Write general description for this method
*/
@synthesize body;

/**
* TODO: Write general description for this method
*/
@synthesize originalBody;

/**
* TODO: Write general description for this method
*/
@synthesize to;

/**
* TODO: Write general description for this method
*/
@synthesize customString;

/**
* TODO: Write general description for this method
*/
@synthesize originalMessageId;

/**
* TODO: Write general description for this method
*/
@synthesize userId;

/**
* TODO: Write general description for this method
*/
@synthesize subaccountId;

/**
* TODO: Write general description for this method
*/
@synthesize timestamp;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"from": @"from",
        @"body": @"body",
        @"original_body": @"originalBody",
        @"to": @"to",
        @"custom_string": @"customString",
        @"original_message_id": @"originalMessageId",
        @"user_id": @"userId",
        @"subaccount_id": @"subaccountId",
        @"timestamp": @"timestamp"  
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