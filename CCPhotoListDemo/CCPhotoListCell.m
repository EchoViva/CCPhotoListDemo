//
//  CCPhotoListCell.m
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "CCPhotoListCell.h"
#import "CCPhotoListModel.h"
#import "CCDefine.h"

@interface CCPhotoListCell ()

@property (nonatomic, strong) UIImageView *headImgView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIImageView *idenImgView;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UILabel *timeLabel;

@property (nonatomic, strong) UILabel *originText;
@property (nonatomic, strong) UIImageView *originImgView;
@property (nonatomic, strong) UIImageView *originPicImgView;

@property (nonatomic, strong) UIView *lineView;

@property (nonatomic, strong) UIImageView *heartImgView;

@end

@implementation CCPhotoListCell

#pragma mark -lazy load
- (UIImageView *)headImgView
{
    if (!_headImgView) {
        _headImgView = [[UIImageView alloc] init];
        _headImgView.backgroundColor = [UIColor colorWithHex:0xE6E9ED alpha:1];
        _headImgView.layer.cornerRadius = 25;
        _headImgView.layer.masksToBounds = YES;
    }
    return _headImgView;
}

- (UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textColor = RGBCOLOR(67, 74, 84);
        _nameLabel.font = [UIFont systemFontOfSize:15];
    }
    return _nameLabel;
}

- (UILabel *)contentLabel
{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = RGBCOLOR(67, 74, 84);
        _contentLabel.font = [UIFont boldSystemFontOfSize:15];
        _contentLabel.numberOfLines = 2;
    }
    return _contentLabel;
}

- (UIImageView *)idenImgView
{
    if (!_idenImgView) {
        _idenImgView = [[UIImageView alloc] init];
    }
    return _idenImgView;
}

- (UILabel *)timeLabel
{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textColor = RGBCOLOR(170, 178, 189);
        _timeLabel.font = [UIFont systemFontOfSize:13];
    }
    return _timeLabel;
}

- (UILabel *)originText
{
    if (!_originText) {
        _originText = [[UILabel alloc] init];
        _originText.textColor = RGBCOLOR(170, 178, 189);
        _originText.font = [UIFont systemFontOfSize:13];
        _originText.numberOfLines = 4;
        _originText.textAlignment = NSTextAlignmentRight;
    }
    return _originText;
}

- (UIImageView *)originImgView
{
    if (!_originImgView) {
        _originImgView = [[UIImageView alloc] init];
        _originImgView.backgroundColor = [UIColor colorWithHex:0xE6E9ED alpha:1];
    }
    return _originImgView;
}

- (UIImageView *)originPicImgView
{
    if (!_originPicImgView) {
        _originPicImgView = [[UIImageView alloc] init];
        _originPicImgView.backgroundColor = [UIColor colorWithHex:0xE6E9ED alpha:1];
    }
    return _originPicImgView;
}

- (UIView *)lineView
{
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor colorWithHex:0xE6E9ED alpha:1];
    }
    return _lineView;
}

- (UIImageView *)heartImgView
{
    if (!_heartImgView) {
        _heartImgView = [[UIImageView alloc] init];
        _heartImgView.image = [UIImage imageNamed:@"v270_btn_zan0"];
    }
    return _heartImgView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self _initView];
    }
    return self;
}

- (void)_initView
{
    [self.contentView addSubview:self.headImgView];
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.idenImgView];
    [self.contentView addSubview:self.contentLabel];
    [self.contentView addSubview:self.timeLabel];
    [self.contentView addSubview:self.originImgView];
    [self.contentView addSubview:self.originPicImgView];
    [self.contentView addSubview:self.originText];
    [self.contentView addSubview:self.lineView];
    
    [self.contentView addSubview:self.heartImgView];
    
    [_headImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.and.top.mas_equalTo(15);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@75);
        make.top.mas_equalTo(15);
    }];
    
    [_heartImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@75);
        make.top.equalTo(_nameLabel.mas_bottom).mas_offset(15);
    }];
    
    [_idenImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_nameLabel.mas_trailing).mas_offset(10);
        make.centerY.equalTo(_nameLabel);
    }];
    
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@75);
        make.top.equalTo(_nameLabel.mas_bottom).mas_offset(10 - 2);
        make.trailing.equalTo(@-99);
    }];
    
    [_originText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@13);
        make.trailing.mas_equalTo(-15);
        make.width.mas_equalTo(60);
    }];
    
    [_originImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@15);
        make.trailing.equalTo(@-15);
        make.size.mas_equalTo(CGSizeMake(60, 60));
    }];
    
    [_originPicImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@15);
        make.trailing.equalTo(@-15);
        make.size.mas_equalTo(CGSizeMake(60, 60));
    }];
    
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.and.trailing.equalTo(@0);
        make.top.greaterThanOrEqualTo(_originText.mas_bottom).mas_offset(15 + 2);
        make.top.greaterThanOrEqualTo(_originImgView.mas_bottom).mas_offset(21);
        make.top.greaterThanOrEqualTo(_originPicImgView.mas_bottom).mas_offset(21);
        make.height.equalTo(@0.5);
        make.bottom.equalTo(@0);
    }];
    
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_nameLabel);
        make.top.greaterThanOrEqualTo(_contentLabel.mas_bottom).mas_offset(10);
        make.top.greaterThanOrEqualTo(_heartImgView.mas_bottom).mas_offset(15);
        make.bottom.equalTo(@-8);
    }];
}

- (void)setModel:(CCPhotoListModel *)model
{
    _model = model;
    [self.headImgView sd_setImageWithURL:[NSURL URLWithString:model.url] placeholderImage:[UIImage imageNamed:@"v270_img_mrtx_100px"]];
    
    self.nameLabel.text = model.name;
    
    if (model.identification == 0) {
        self.idenImgView.image = [UIImage imageNamed:@"v270_label_admin"];//圈主
    }else if (model.identification == 1) {
        self.idenImgView.image = [UIImage imageNamed:@"v270_label_assistant"];//助手
    }else if (model.identification == 2) {
        self.idenImgView.image = [UIImage imageNamed:@"v270_label_doctor"];//医生
    }
    
    if (model.isZan) {
        self.contentLabel.hidden = YES;
        self.heartImgView.hidden = NO;
        
    }else {
        self.contentLabel.hidden = NO;
        self.heartImgView.hidden = YES;
        self.contentLabel.text = model.content;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:_contentLabel.text];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:4.5];//调整行间距
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [_contentLabel.text length])];
        _contentLabel.attributedText = attributedString;
        paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
        [_contentLabel sizeToFit];
    }
    
    self.timeLabel.text = [self getStrByDate:[NSDate dateWithTimeIntervalSince1970:model.time.longValue/1000]];
    
    if (!StrEmpty(model.originUrl)) {
        self.originImgView.hidden = NO;
        self.originPicImgView.hidden = YES;
        self.originText.hidden = YES;
        [self.originImgView sd_setImageWithURL:[NSURL URLWithString:model.originUrl] placeholderImage:[UIImage imageNamed:@"v270_icon_url_120px"]];
    }else {
        if (!StrEmpty(model.originPicture)) {
            self.originPicImgView.hidden = NO;
            self.originImgView.hidden = YES;
            self.originText.hidden = YES;
            [self.originPicImgView sd_setImageWithURL:[NSURL URLWithString:model.originPicture] placeholderImage:[UIImage imageNamed:@"v270_icon_url_120px"]];
        }else {
            self.originPicImgView.hidden = YES;
            self.originImgView.hidden = YES;
            self.originText.hidden = NO;
            
            self.originText.text = model.originText;
            NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.originText.text];
            NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
            [paragraphStyle setLineSpacing:3.9];//调整行间距
            [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.originText.text length])];
            self.originText.attributedText = attributedString;
            paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
            [self.originText sizeToFit];
            
        }
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.contentView layoutIfNeeded];
}

- (NSString *)getStrByDate:(NSDate *)date{
    NSTimeInterval delta = [[NSDate date] timeIntervalSinceDate:date];
    //    date = [[NSDate date] dateByAddingDay:-2];
    if(delta < 60 && delta >= 0){//1分钟以内
        return [NSString stringWithFormat:@"1分钟前"];
    }else if(delta < (3600 - 60) && delta >= 60){//1-59分钟 显示“**分钟前”
        return [NSString stringWithFormat:@"%.0f分钟前",delta/60];
    }else if ([[date stringWithDateFormat:XJDateFormat_y_M_d] isEqualToString:[[NSDate date] stringWithDateFormat:XJDateFormat_y_M_d]]) {
        return [date stringWithDateFormat:@"今天 HH:mm"];
    }else if ([[date stringWithDateFormat:XJDateFormat_y_M_d] isEqualToString:[[[NSDate date] dateByAddingDay:-1] stringWithDateFormat:XJDateFormat_y_M_d]]){
        return [date stringWithDateFormat:@"昨天 HH:mm"];
    }else{
        return [date stringWithDateFormat:@"yyyy-MM-dd HH:mm"];
    }
}

@end
