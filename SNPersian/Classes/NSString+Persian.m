//
//  NSString_PersianExtension.c
//  SNPersian
//
//  Created by Sina Khalili on 7/13/17.
//  Copyright © 2017 SinaKH. All rights reserved.
//

#import "NSString+Persian.h"
#import "SNPersianConstants.m"

@implementation NSString (SKPersian)

-(NSString *) persianDigits {
    NSString *string = [[NSString alloc] initWithString: self];
    for (int i = 0; i < 10; i++) {
        string = [string stringByReplacingOccurrencesOfString:arrEnglishDigits[i] withString:arrPersianDigits[i]];
        string = [string stringByReplacingOccurrencesOfString:arrArabicDigits[i] withString:arrPersianDigits[i]];
    }
    return string;
}

-(NSString *) englishDigits {
    NSString *string = [[NSString alloc] initWithString: self];
    for (int i = 0; i < 10; i++) {
        string = [string stringByReplacingOccurrencesOfString:arrPersianDigits[i] withString:arrEnglishDigits[i]];
        string = [string stringByReplacingOccurrencesOfString:arrArabicDigits[i] withString:arrEnglishDigits[i]];
    }
    return string;
}

-(NSString *) persianChars {
    NSString *string = [[NSString alloc] initWithString: self];
    string = [string stringByReplacingOccurrencesOfString:@"ي" withString:@"ی"];
    string = [string stringByReplacingOccurrencesOfString:@"ة" withString:@"ه"];
    string = [string stringByReplacingOccurrencesOfString:@"ك" withString:@"ک"];
    return string;
}

@end
