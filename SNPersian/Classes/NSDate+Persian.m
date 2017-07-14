//
//  NSDate+Persian.m
//  SNPersian
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSString+Persian.h"
#import "NSDate+Persian.h"

@implementation NSDate (SKPersian)

-(SNJalaali *) jalaaliDate {
    return [[SNJalaali alloc] initWithDate:self];
}

@end
