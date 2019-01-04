//
//  XHSystemInfo.h
//  Pods-XHCommonKit_Example
//
//  Created by 郑信鸿 on 2019/1/4.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XHSystemInfo : NSObject

+ (NSString *)iphoneTypeString;

//5大小
+ (BOOL)iPhone5;

//小屏
+ (BOOL)iPhone678;

//iphonePuls
+ (BOOL)iphonePuls;

//全面屏
+ (BOOL)iPhoneFullscreen;

+ (BOOL)iPhoneFullscreenMax;

+ (CGFloat)statusBarHeight;

+ (CGFloat)navgationHeight;

+ (CGFloat)bottomSafeHeight;

@end

NS_ASSUME_NONNULL_END
