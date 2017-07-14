//
//  SNJalaali.m
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSString+Persian.h"
#import "SNPersianConstants.m"
#import "SNJalaali.h"

@implementation SNJalaali

-(instancetype)initWithDate:(NSDate *)date {
    self = [super init];
    if(self)
    {
        _date = date;
        NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierPersian];
        NSDateComponents *components = [calender components:
                                        NSCalendarUnitDay   | NSCalendarUnitMonth   | NSCalendarUnitYear |
                                        NSCalendarUnitHour  | NSCalendarUnitMinute  | NSCalendarUnitSecond
                                                   fromDate:date];
        _year   = components.year;
        _month  = components.month;
        _day    = components.day;
        _hour   = components.hour;
        _minute = components.minute;
        _second = components.second;
    }
    return self;
}

-(NSString *)dateWithFormat: (SNJalaaliDateFormat) format {
    NSString *strMonth = [NSString stringWithFormat: @"%ld", (long)_month];
    if ([strMonth length] < 2) {
        strMonth = [@"0" stringByAppendingString:strMonth];
    }
    switch (format) {
        case SNJalaaliDateFormatEnglish:
            return [NSString stringWithFormat:@"%ld/%@/%ld", (long)_year, strMonth, (long)_day];
        case SNJalaaliDateFormatPersian:
            return [[self dateWithFormat:SNJalaaliDateFormatEnglish] persianDigits];
        case SNJalaaliDateFormatPersianText:
            return [[NSString stringWithFormat:@"%ld %@ %ld", (long)_day, arrJalaaliMonthes[_month-1], (long)_year] persianDigits];
    }
}

-(NSString *)timeWithFormat: (SNJalaaliTimeFormat) format {
    NSString *strMinute = [NSString stringWithFormat: @"%ld", (long)_minute];
    if ([strMinute length] < 2) {
        strMinute = [@"0" stringByAppendingString:strMinute];
    }
    switch (format) {
        case SNJalaaliTimeFormatEnglish:
            return [NSString stringWithFormat:@"%ld:%@", (long)_hour, strMinute];
        case SNJalaaliTimeFormatEnglishText:
            return [NSString stringWithFormat:@"%ld:%@ %@", _hour < 12 ? (long)_hour : (long)_hour - 12, strMinute, _hour < 12 ? @"AM" : @"PM"];
        case SNJalaaliTimeFormatPersian:
            return [[self timeWithFormat:SNJalaaliTimeFormatEnglish] persianDigits];
        case SNJalaaliTimeFormatPersianText:
            return [[NSString stringWithFormat:@"%ld:%@ %@", _hour < 12 ? (long)_hour : (long)_hour - 12, strMinute, _hour < 12 ? @"ق.ظ" : @"ب.ظ"] persianDigits];
        case SNJalaaliTimeFormatPersianLongText:
            return [[NSString stringWithFormat:@"%ld:%@ %@", _hour < 12 ? (long)_hour : (long)_hour - 12, strMinute, _hour < 12 ? @"قبل‌ازظهر" : @"بعدازظهر"] persianDigits];
    }
}

-(NSString *)dateTimeWithFormat: (SNJalaaliDateFormat) dateFormat timeFormat: (SNJalaaliTimeFormat) timeFormat seperator: (NSString *) separator {
    NSString *strSeparator = [@" " stringByAppendingString:[(separator == nil ? @"" : separator) stringByAppendingString:@" "]];
    if ([strSeparator length] == 2) {
        strSeparator = @" ";
    }
    return [NSString stringWithFormat:@"%@%@%@", [self dateWithFormat:dateFormat], strSeparator, [self timeWithFormat:timeFormat]];
}

@end
