//
//  SMSHistory.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "SMSHistory.h"

@implementation SMSHistory

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
@synthesize contactId;

/**
* TODO: Write general description for this method
*/
@synthesize firstName;

/**
* TODO: Write general description for this method
*/
@synthesize lastName;

/**
* TODO: Write general description for this method
*/
@synthesize apiUsername;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"status_code": @"statusCode",
        @"status_text": @"statusText",
        @"error_code": @"errorCode",
        @"error_text": @"errorText",
        @"contact_id": @"contactId",
        @"first_name": @"firstName",
        @"last_name": @"lastName",
        @"_api_username": @"apiUsername"  
    }];
    [map addEntriesFromDictionary: [super keyMap]];   

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