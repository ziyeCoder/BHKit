//
//  NSString+BHExtension.h
//  Pods
//
//  Created by qibinghe on 2021/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (BHExtension)

/// 是否是有效字符串
/// @param string 外部传入字符串
+ (BOOL)bh_isValidString:(NSString *)string;

/// 是否是无效字符串
/// @param string 外部传入字符串
+ (BOOL)bh_isInvalidString:(NSString *)string;

/// 返回新的字符串(如果外部传入的不是正确的字符串,返回空字符串)
/// @param string 外部传入字符串
+ (NSString *)bh_unEmptyString:(NSString *)string;

/// 字符串中是否包含中文
/// @param string 外部传入字符串
+ (BOOL)bh_isIncludeChineseWithString:(NSString *)string;
 
/// 判断字符串是否全部是数字
/// @param string 外部传入字符串
+ (BOOL)bh_isAllNum:(NSString *)string;

/// 判断字符串中是否包含某个字符串
/// @param substring 是否包含的字符串
- (BOOL)bh_isContainsString:(NSString *)substring;

@end
 

NS_ASSUME_NONNULL_END
