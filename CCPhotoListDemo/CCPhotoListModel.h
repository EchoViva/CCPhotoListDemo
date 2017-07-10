//
//  CCPhotoListModel.h
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCPhotoListModel : NSObject

//头像、名称、身份、回复内容、回复时间、原帖缩略；
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger identification;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) NSNumber *time;

@property (nonatomic, copy) NSString *originUrl;
@property (nonatomic, copy) NSString *originPicture;
@property (nonatomic, copy) NSString *originText;

@property (nonatomic, assign) BOOL isZan;

@end
