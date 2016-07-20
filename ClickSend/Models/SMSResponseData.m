//
//  SMSResponseData.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "SMSResponseData.h"

@implementation SMSResponseData

/**
* TODO: Write general description for this method
*/
@synthesize totalPrice;

/**
* TODO: Write general description for this method
*/
@synthesize totalCount;

/**
* TODO: Write general description for this method
*/
@synthesize queuedCount;

/**
* TODO: Write general description for this method
*/
@synthesize messages;

/**
* TODO: Write general description for this method
*/
@synthesize currency;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"total_price": @"totalPrice",
        @"total_count": @"totalCount",
        @"queued_count": @"queuedCount",
        @"messages": @"messages",
        @"currency": @"currency"  
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