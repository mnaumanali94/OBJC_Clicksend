//
//  ResponseData.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "ResponseData.h"

@implementation ResponseData

/**
* TODO: Write general description for this method
*/
@synthesize total;

/**
* TODO: Write general description for this method
*/
@synthesize perPage;

/**
* TODO: Write general description for this method
*/
@synthesize currentPage;

/**
* TODO: Write general description for this method
*/
@synthesize lastPage;

/**
* TODO: Write general description for this method
*/
@synthesize nextPageUrl;

/**
* TODO: Write general description for this method
*/
@synthesize prevPageUrl;

/**
* TODO: Write general description for this method
*/
@synthesize from;

/**
* TODO: Write general description for this method
*/
@synthesize to;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"total": @"total",
        @"per_page": @"perPage",
        @"current_page": @"currentPage",
        @"last_page": @"lastPage",
        @"next_page_url": @"nextPageUrl",
        @"prev_page_url": @"prevPageUrl",
        @"from": @"from",
        @"to": @"to"  
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