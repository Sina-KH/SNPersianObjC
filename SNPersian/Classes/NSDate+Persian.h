//
//  NSDate+Persian.h
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SNJalaali.h"

@interface NSDate (SKPersian)

-(SNJalaali *) jalaaliDate;

typedef NS_ENUM(NSInteger, NSDateRelativeStringFormat) {
    NSDateRelativeStringFormatEnglish,
    NSDateRelativeStringFormatPersian
};
-(NSString *)relativeStringWithFormat: (NSDateRelativeStringFormat) format;

@end
