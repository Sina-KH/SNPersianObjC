//
//  NSNumber+Persian.m
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSNumber+Persian.h"

@implementation NSNumber (SKPersian)

-(NSString *) persianDigits {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.groupingSeparator = @"،";
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier: @"fa"];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter stringFromNumber: self];
}

@end
