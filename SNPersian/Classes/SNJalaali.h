//
//  SNJalaali.h
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNJalaali : NSObject

@property(readonly) NSDate* date;
@property(readonly) NSInteger year;
@property(readonly) NSInteger month;
@property(readonly) NSInteger day;
@property(readonly) NSInteger hour;
@property(readonly) NSInteger minute;
@property(readonly) NSInteger second;

-(instancetype)initWithDate:(NSDate *)date;



typedef NS_ENUM(NSInteger, SNJalaaliDateFormat) {
    SNJalaaliDateFormatEnglish,
    SNJalaaliDateFormatPersian,
    SNJalaaliDateFormatPersianText
};
-(NSString *)dateWithFormat: (SNJalaaliDateFormat) format;

typedef NS_ENUM(NSInteger, SNJalaaliTimeFormat) {
    SNJalaaliTimeFormatEnglish,
    SNJalaaliTimeFormatEnglishText,
    SNJalaaliTimeFormatPersian,
    SNJalaaliTimeFormatPersianText,
    SNJalaaliTimeFormatPersianLongText
};
-(NSString *)timeWithFormat: (SNJalaaliTimeFormat) format;

-(NSString *)dateTimeWithFormat: (SNJalaaliDateFormat) dateFormat timeFormat: (SNJalaaliTimeFormat) timeFormat seperator: (NSString *) separator;

@end
