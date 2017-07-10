//
//  CCDefine.h
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#ifndef CCDefine_h
#define CCDefine_h

#import "Masonry.h"
#import "UIImageView+WebCache.h"
#import "UIColor+Extend.h"
#import "NSDate+Extend.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr, "[%s:%d行] %s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

/* 字符串是否为空 */
#define StrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))

#endif /* CCDefine_h */
