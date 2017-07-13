//
//  SNJalaali.h
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNJalaali : NSObject

@property(readonly) NSInteger year;
@property(readonly) NSInteger month;
@property(readonly) NSInteger day;

-(instancetype)initWithDate:(NSDate *)date;



typedef NS_ENUM(NSInteger, SNJalaaliFormat) {
    SNJalaaliFormatEnglish,
    SNJalaaliFormatPersian,
    SNJalaaliFormatPersianText
};

-(NSString *)textWithFormat: (SNJalaaliFormat) format;

@end
