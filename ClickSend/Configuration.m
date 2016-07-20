//
//  Configuration.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "Configuration.h"

@implementation Configuration

static NSString* Configuration_BaseUri = @"https://rest.clicksend.com/v3";
NSString* Configuration_Username;
NSString* Configuration_Key;

/** The base Uri for API calls */
+(NSString*) BaseUri
{
    return Configuration_BaseUri;
}

+(void) SetBaseUri:(NSString*)BaseUri
{
    Configuration_BaseUri = BaseUri;
}

/** your username */
+(NSString*) Username
{
    if(!Configuration_Username)
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Username"];
    return Configuration_Username;
}

+(void) SetUsername:(NSString*)Username
{
    Configuration_Username = Username;
}

/** your api key */
+(NSString*) Key
{
    if(!Configuration_Key)
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Key"];
    return Configuration_Key;
}

+(void) SetKey:(NSString*)Key
{
    Configuration_Key = Key;
}


@end