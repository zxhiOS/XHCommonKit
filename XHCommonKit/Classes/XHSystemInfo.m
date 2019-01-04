//
//  XHSystemInfo.m
//  Pods-XHCommonKit_Example
//
//  Created by 郑信鸿 on 2019/1/4.
//

#import "XHSystemInfo.h"
#import <sys/utsname.h>
#import <UIKit/UIKit.h>

@implementation XHSystemInfo


+ (NSString *)iphoneTypeString{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString*phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    if([phoneType  isEqualToString:@"iPhone1,1"])  return@"iPhone 2G";
    
    if([phoneType  isEqualToString:@"iPhone1,2"])  return@"iPhone 3G";
    
    if([phoneType  isEqualToString:@"iPhone2,1"])  return@"iPhone 3GS";
    
    if([phoneType  isEqualToString:@"iPhone3,1"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,2"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,3"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone4,1"])  return@"iPhone 4S";
    
    if([phoneType  isEqualToString:@"iPhone5,1"])  return@"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,2"])  return@"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,3"])  return@"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone5,4"])  return@"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone6,1"])  return@"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone6,2"])  return@"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone7,1"])  return@"iPhone 6 Plus";
    
    if([phoneType  isEqualToString:@"iPhone7,2"])  return@"iPhone 6";
    
    if([phoneType  isEqualToString:@"iPhone8,1"])  return@"iPhone 6s";
    
    if([phoneType  isEqualToString:@"iPhone8,2"])  return@"iPhone 6s Plus";
    
    if([phoneType  isEqualToString:@"iPhone8,4"])  return@"iPhone SE";
    
    if([phoneType  isEqualToString:@"iPhone9,1"])  return@"iPhone 7";
    
    if([phoneType  isEqualToString:@"iPhone9,2"])  return@"iPhone 7 Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,1"]) return@"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,4"]) return@"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,2"]) return@"iPhone 8 Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,5"]) return@"iPhone 8 Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,3"]) return@"iPhone X";
    
    if([phoneType  isEqualToString:@"iPhone10,6"]) return@"iPhone X";
    
    if([phoneType  isEqualToString:@"iPhone11,8"]) return@"iPhone XR";
    
    if([phoneType  isEqualToString:@"iPhone11,2"]) return@"iPhone XS";
    
    if([phoneType  isEqualToString:@"iPhone11,4"]) return@"iPhone XS Max";
    
    if([phoneType  isEqualToString:@"iPhone11,6"]) return@"iPhone XS Max";
    return @"iPad";
}


+ (CGSize)mainScreenSize
{
    return [UIScreen mainScreen].bounds.size;
}

+ (BOOL)isEqualToScreenSize:(CGSize)size
{
    return CGSizeEqualToSize(size, [self mainScreenSize]);
}

//5大小
+ (BOOL)iPhone5{
   return [self isEqualToScreenSize:CGSizeMake(320.0f, 568.0f)];
}

//小屏
+ (BOOL)iPhone678{
    
    return [self isEqualToScreenSize:CGSizeMake(375.0f, 667.0f)];
}

//iphonePuls
+ (BOOL)iphonePuls{
    return [self isEqualToScreenSize:CGSizeMake(414.0f, 736.0f)];
}

//全面屏
+ (BOOL)iPhoneFullscreen{
    //375x812
    if ([[self iphoneTypeString] isEqualToString:@"iPhone X"]) {
        return YES;
    }
    if ([[self iphoneTypeString] isEqualToString:@"iPhone XR"]) {
        return YES;
    }
    if ([[self iphoneTypeString] isEqualToString:@"iPhone XS"]) {
        return YES;
    }
  
    return NO;
}


+ (BOOL)iPhoneFullscreenMax{
    
    //414x896
    if ([[self iphoneTypeString] isEqualToString:@"iPhone XS Max"]) {
        return YES;
    }
    return NO;
}

+ (CGFloat)statusBarHeight{
    
    if ([self iPhoneFullscreen] || [self iPhoneFullscreenMax]) {
        return 44;
    }else{
        
        return 20;
    }
    
}

+ (CGFloat)navgationHeight{
    
    return [self statusBarHeight] + 44;
}


+ (CGFloat)bottomSafeHeight{
    
    if ([self iPhoneFullscreen] || [self iPhoneFullscreenMax]) {
        return 34;
    }else{
        
        return 0;
    }
    
}


@end
