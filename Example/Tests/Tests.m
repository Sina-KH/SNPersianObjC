//
//  SNPersianTests.m
//  SNPersianTests
//
//  Created by SinaKH on 07/14/2017.
//  Copyright (c) 2017 SinaKH. All rights reserved.
//

#import "SNPersian.h"

@import XCTest;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    // NSString test
    XCTAssertTrue([[@"0,1,2,3,4,5,6,7,8,9" persianDigits] isEqualToString: @"۰,۱,۲,۳,۴,۵,۶,۷,۸,۹"]);
    XCTAssertTrue([[@"٠,١,٢,٣,٤,٥,٦,٧,٨,٩" persianDigits] isEqualToString: @"۰,۱,۲,۳,۴,۵,۶,۷,۸,۹"]);
    XCTAssertTrue([[@"ي,ة,ك" persianChars] isEqualToString: @"ی,ه,ک"]);
}

@end

