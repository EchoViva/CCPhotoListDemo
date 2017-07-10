//
//  UIColor+Extend.m
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "UIColor+Extend.h"

@implementation UIColor (Extend)

+ (UIColor *)colorWithHex:(long)hex
{
    return [self colorWithHex:hex alpha:1];
}

+ (UIColor *)colorWithHex:(long)hex alpha:(CGFloat)alpha
{
    float red = (float)((hex & 0xFF0000) >> 16);
    float green = (float)((hex & 0xFF00) >> 8);
    float blue = (float)(hex & 0xFF);
    return [UIColor colorWithDecimalRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithDecimalRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red/255.f green:green/255.f blue:blue/255.f alpha:alpha];
}

@end
