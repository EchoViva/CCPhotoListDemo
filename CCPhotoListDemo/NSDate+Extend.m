//
//  NSDate+Extend.m
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "NSDate+Extend.h"

NSString *const XJDateFormat_y_M_d = @"yyyy-MM-dd";      ///< 格式化类型 yyyy-MM-dd

@implementation NSDate (Extend)

- (NSString *)stringWithDateFormat:(NSString *)dateFormat
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat;
    return [dateFormatter stringFromDate:self];
}

- (NSDate *)dateByAddingDay:(NSInteger)day
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.day = day;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

@end
