//
//  NSDate+extension.m
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import "NSDate+extension.h"

@implementation NSDate (extension)

+(NSDate*) NSDateFromNSString:(NSString*)string
{
    ISO8601DateFormatter *dateFormatter = [[ISO8601DateFormatter alloc] init];
    NSDate *date = [dateFormatter dateFromString:string];
    return date;
}

+(NSString*) NSStringFromNSDate:(NSDate*)date
{
    ISO8601DateFormatter *dateFormatter = [[ISO8601DateFormatter alloc] init];
    NSString *string = [dateFormatter stringFromDate:date];
    return string;
}

+(NSArray<NSString*>*) NSStringArrayFromNSDateArray:(NSArray<NSDate*>*)dateArr
{
    NSMutableArray* stringArr = [[NSMutableArray alloc]init];
    for(NSDate* date in dateArr){
        NSString* stringValue = [self NSStringFromNSDate:date];
        [stringArr addObject:stringValue];
    } 
    return [stringArr copy];
}

+(NSArray<NSDate*>*) NSDateArrayFromNSStringArray:(NSArray<NSString*>*)stringArr
{
    NSMutableArray* dateArr = [[NSMutableArray alloc]init];
    for(NSString* string in stringArr){
        NSDate* date = [self NSDateFromNSString:string];
        [dateArr addObject:date];
    }
    return [dateArr copy];
}

@end