//
//  SmsMessage.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "SmsMessage.h"

@implementation SmsMessage

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
@synthesize to;

/**
* TODO: Write general description for this method
*/
@synthesize source;

/**
* TODO: Write general description for this method
*/
@synthesize schedule;

/**
* TODO: Write general description for this method
*/
@synthesize customString;

/**
* TODO: Write general description for this method
*/
@synthesize listId;

/**
* TODO: Write general description for this method
*/
@synthesize fromEmail;

/**
* TODO: Write general description for this method
*/
@synthesize country;

/**
* TODO: Write general description for this method
*/
@synthesize direction;

/**
* TODO: Write general description for this method
*/
@synthesize date;

/**
* TODO: Write general description for this method
*/
@synthesize messageId;

/**
* TODO: Write general description for this method
*/
@synthesize messageParts;

/**
* TODO: Write general description for this method
*/
@synthesize messagePrice;

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
@synthesize carrier;

/**
* TODO: Write general description for this method
*/
@synthesize status;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"from": @"from",
        @"body": @"body",
        @"to": @"to",
        @"source": @"source",
        @"schedule": @"schedule",
        @"custom_string": @"customString",
        @"list_id": @"listId",
        @"from_email": @"fromEmail",
        @"country": @"country",
        @"direction": @"direction",
        @"date": @"date",
        @"message_id": @"messageId",
        @"message_parts": @"messageParts",
        @"message_price": @"messagePrice",
        @"user_id": @"userId",
        @"subaccount_id": @"subaccountId",
        @"carrier": @"carrier",
        @"status": @"status"  
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