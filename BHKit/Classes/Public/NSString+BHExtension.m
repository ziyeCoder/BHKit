//
//  NSString+BHExtension.m
//  Pods
//
//  Created by qibinghe on 2021/3/1.
//

#import "NSString+BHExtension.h"

@implementation NSString (BHExtension)

//是否是有效字符串
+ (BOOL)bh_isValidString:(NSString *)string {
    if ([string isKindOfClass:[NSString class]] && string.length > 0) {
        return YES;
    }
    return NO;
}

//是否是无效字符串
+ (BOOL)bh_isInvalidString:(NSString *)string {
    return ![self bh_isValidString:string];
}

//返回合法字符串,如果传入字符串不合法,返回空字符串
+ (NSString *)bh_unEmptyString:(NSString *)string {
    if ([string isKindOfClass:[NSString class]]) {
        return string.length > 0 ? string : @"";
    }
    return @"";
}

/// 字符串中是否包含中文
/// @param string 外部传入字符串
+ (BOOL)bh_isIncludeChineseWithString:(NSString *)string {
    for(int i=0; i< [string length];i ++) {
        int a = [string characterAtIndex:i];
        if( a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
        
    }
    return NO;
}
 

/// 判断字符串是否全部是数字
/// @param string 外部传入字符串
+ (BOOL)bh_isAllNum:(NSString *)string {
    if ([NSString bh_isInvalidString:string]) {
        return NO;
    }
    unichar c;
    for (NSInteger i = 0; i < string.length; i++) {
        c = [string characterAtIndex:i];
        if (!isdigit(c)) {
            return NO;
            
        }
    }
    return YES;
}

/// 判断字符串中是否包含某个字符串
/// @param substring 是否包含的字符串
- (BOOL)bh_isContainsString:(NSString *)substring {
    if ([NSString bh_isInvalidString:self]) {
        return NO;
    }
    if ([NSString bh_isInvalidString:substring]) {
        return NO;
    }
    NSString *version= [UIDevice currentDevice].systemVersion;
    if (version.doubleValue >= 8) {
        if ([self containsString:substring]) return YES;;
    } else {
        NSRange range = [self rangeOfString:substring];
        
        if (range.location != NSNotFound) return YES;;
    }
    return NO;
}

@end
