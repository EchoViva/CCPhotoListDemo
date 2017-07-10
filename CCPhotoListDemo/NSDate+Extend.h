//
//  NSDate+Extend.h
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const XJDateFormat_y_M_d;          ///< 格式化类型 yyyy-MM-dd

@interface NSDate (Extend)

- (NSString *)stringWithDateFormat:(NSString *)dateFormat;

- (NSDate *)dateByAddingDay:(NSInteger)day;

@end
