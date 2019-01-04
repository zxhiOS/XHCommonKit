//
//  NSString+XHTool.h
//  Pods-XHCategories_Example
//
//  Created by 郑信鸿 on 2018/12/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (XHTool)

//去除空格和换行
- (NSString *)stringByTrim;

//url转码
- (NSString *)stringByURLDecode;

- (NSString *)md5String;

@end

NS_ASSUME_NONNULL_END
