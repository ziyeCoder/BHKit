//
//  BHKitTests.m
//  BHKitTests
//
//  Created by 3055508038@qq.com on 03/01/2021.
//  Copyright (c) 2021 3055508038@qq.com. All rights reserved.
//

@import XCTest;
#import <NSString+BHExtension.h>

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
    
}

- (void)testIsValidString {
    NSString *testString;
    
//    XCTAssertTrue([NSString bh_isValidString:testString],@"无效的字符串");
    testString = @"";
//    XCTAssertTrue([NSString bh_isValidString:testString],@"无效的字符串");
    testString = @"123213asdf";
    XCTAssertTrue([NSString bh_isValidString:testString],@"无效的字符串");
}

- (void)testIsInvalidString {
    NSString *testString;
    
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
    testString = nil;
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
    testString = NULL;
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
    testString = @"";
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
    testString = [NSNull new];
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
    testString = @"123213asdf";
    XCTAssertTrue([NSString bh_isInvalidString:testString],@"有效的字符串");
}

- (void)testIsUnEmptyString {
    NSString *testString;
    
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@""],@"无效的字符串");
    testString = nil;
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@""],@"无效的字符串");
    testString = NULL;
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@""],@"无效的字符串");
    testString = @"";
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@""],@"无效的字符串");
    testString = [NSNull new];
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@""],@"无效的字符串");
    testString = @"123213asdf";
    XCTAssertTrue([[NSString bh_unEmptyString:testString] isEqualToString:@"123213asdf"],@"无效的字符串");
}

- (void)testIsIncludeChinese {
    NSString *testString;
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = @"你123213asdf";
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = @"123213asdf好";
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = nil;
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = NULL;
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = @"";
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = [NSNull new];
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");
    testString = @"123213asdf";
    XCTAssertTrue([NSString bh_isIncludeChineseWithString:testString],@"不包含中文");

}

- (void)testIsAllNumber {
    NSString *testString;
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = @"123213";
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = @"你123213asdf";
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = @"123213asdf好";
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = nil;
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = NULL;
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = @"";
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = [NSNull new];
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
    testString = @"123213asdf";
    XCTAssertTrue([NSString bh_isAllNum:testString],@"包含非数字");
}

- (void)testIsContainsString {
    
    NSString *a = @"";
    NSString *b  = @"";
    
 
    NSString *testString;
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    
    a = @"123";
    b  = @"";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123";
    b  = @"2";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123";
    b  = @"1";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123";
    b  = nil;
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123";
    b = NULL;
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123string";
    b  = @"s";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123中国";
    b  = @"中";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123@国";
    b  = @"@";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
    a = @"123☆国";
    b  = @"☆";
    XCTAssertTrue([a bh_isContainsString:b],@"非包含关系");
}

@end

