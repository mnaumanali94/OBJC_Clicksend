//
//  Currency.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "Currency.h"

@implementation Currency

/**
* TODO: Write general description for this method
*/
@synthesize currencyNameShort;

/**
* TODO: Write general description for this method
*/
@synthesize currencyPrefixD;

/**
* TODO: Write general description for this method
*/
@synthesize currencyPrefixC;

/**
* TODO: Write general description for this method
*/
@synthesize currencyNameLong;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"currency_name_short": @"currencyNameShort",
        @"currency_prefix_d": @"currencyPrefixD",
        @"currency_prefix_c": @"currencyPrefixC",
        @"currency_name_long": @"currencyNameLong"  
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