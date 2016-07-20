//
//  Configuration.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#ifndef ClickSend_Configuration_h
#define ClickSend_Configuration_h

@interface Configuration : NSObject

/** The base Uri for API calls */
+(NSString*) BaseUri;

+(void) SetBaseUri : (NSString*)BaseUri;

/** your username */
+(NSString*) Username;

+(void) SetUsername : (NSString*)Username;

/** your api key */
+(NSString*) Key;

+(void) SetKey : (NSString*)Key;


@end

#endif
