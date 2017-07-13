//
//  SNJalaali.m
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSString+Persian.h"
#import "SNConstants.m"
#import "SNJalaali.h"

@implementation SNJalaali

@synthesize year = _year;
@synthesize month = _month;
@synthesize day = _day;

-(instancetype)initWithDate:(NSDate *)date {
    self = [super init];
    if(self)
    {
        NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierPersian];
        NSDateComponents *components = [calender components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:date];
        _year = components.year;
        _month = components.month;
        _day = components.day;
    }
    return self;
}

-(NSString *)textWithFormat: (SNJalaaliFormat) format {
    NSString *strMonth = [NSString stringWithFormat: @"%ld", (long)_month];
    if ([strMonth length] < 2) {
        strMonth = [@"0" stringByAppendingString:strMonth];
    }
    switch (format) {
        case SNJalaaliFormatEnglish:
            return [NSString stringWithFormat:@"%ld/%@/%ld", (long)_year, strMonth, (long)_day];
        case SNJalaaliFormatPersian:
            return [[self textWithFormat:SNJalaaliFormatEnglish] persianDigits];
        case SNJalaaliFormatPersianText:
            return [[NSString stringWithFormat:@"%ld %@ %ld", (long)_day, arrJalaaliMonthes[_month-1], (long)_year] persianDigits];
    }
}

@end
