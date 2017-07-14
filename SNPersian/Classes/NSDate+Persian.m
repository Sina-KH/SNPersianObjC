//
//  NSDate+Persian.m
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSString+Persian.h"
#import "NSDate+Persian.h"
#import "SNPersianConstants.m"

@implementation NSDate (SKPersian)

-(SNJalaali *) jalaaliDate {
    return [[SNJalaali alloc] initWithDate:self];
}


-(NSString *)relativeStringWithFormat: (NSDateRelativeStringFormat) format {
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierPersian];
    NSDateComponents *components = [calender components:
                                    NSCalendarUnitDay   | NSCalendarUnitMonth   | NSCalendarUnitYear |
                                    NSCalendarUnitHour  | NSCalendarUnitMinute  | NSCalendarUnitSecond
                                               fromDate:self toDate:[[NSDate alloc] init] options:0];
    NSArray *arrRelativeDate;
    switch (format) {
        case NSDateRelativeStringFormatEnglish:
            arrRelativeDate = arrRelativeDateEnglish;
            break;
        case NSDateRelativeStringFormatPersian:
            arrRelativeDate = arrRelativeDatePersian;
            break;
    }
    
    NSString *relativeString;
    if ([components year] > 0) {
        if ([components year] == 1) {
            relativeString = arrRelativeDate[0];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components year],arrRelativeDate[1]];
        }
    } else if ([components month] > 0) {
        if ([components month] == 1) {
            relativeString = arrRelativeDate[2];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components month],arrRelativeDate[3]];
        }
    } else if ([components day] >= 7) {
        long week = [components day] / 7;
        if (week == 1) {
            relativeString = arrRelativeDate[4];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",week,arrRelativeDate[5]];
        }
    } else if ([components day] > 0) {
        if ([components day] == 1) {
            relativeString = arrRelativeDate[6];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components day],arrRelativeDate[7]];
        }
    } else if ([components hour] > 0) {
        if ([components hour] == 1) {
            relativeString = arrRelativeDate[8];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components hour],arrRelativeDate[9]];
        }
    } else if ([components minute] > 0) {
        if ([components minute] == 1) {
            relativeString = arrRelativeDate[10];
        } else {
            relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components minute],arrRelativeDate[11]];
        }
    } else if ([components second] < 10) {
        relativeString = arrRelativeDate[12];
    } else {
        relativeString = [NSString stringWithFormat:@"%ld %@",(long)[components second],arrRelativeDate[13]];
    }
    switch (format) {
        case NSDateRelativeStringFormatEnglish:
            return relativeString;
        case NSDateRelativeStringFormatPersian:
            return [relativeString persianDigits];
    }
}

@end
