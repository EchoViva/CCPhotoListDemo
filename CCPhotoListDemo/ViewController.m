//
//  ViewController.m
//  CCPhotoListDemo
//
//  Created by luckyCoderCai on 2017/7/10.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "ViewController.h"
#import "CCDefine.h"
#import "CCPhotoListCell.h"
#import "CCPhotoListModel.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;//数据源

@property (nonatomic, strong) UIView *displayTimeView;
@property (nonatomic, strong) UILabel *timeLabel;

@end

@implementation ViewController

#pragma mark -lazy load
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.estimatedRowHeight = 100;
        _tableView.rowHeight = UITableViewAutomaticDimension;
    }
    return _tableView;
}

- (UIView *)displayTimeView
{
    if (!_displayTimeView) {
        _displayTimeView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 25)];
        _displayTimeView.backgroundColor = [UIColor colorWithHex:0xf5f7fa];
    }
    return _displayTimeView;
}

- (UILabel *)timeLabel
{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 100, 25)];
        _timeLabel.textColor = [UIColor colorWithHex:0x434A54];
        _timeLabel.font = [UIFont boldSystemFontOfSize:13];
    }
    return _timeLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"相册";
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;//取消自动偏移
    
    [self setupUI];
    [self addData];
    
}

- (void)addData
{
    self.dataArray = [NSMutableArray array];
    
    //假数据
    NSMutableArray *array1 = [NSMutableArray array];
    NSMutableArray *array2 = [NSMutableArray array];
    NSMutableArray *array3 = [NSMutableArray array];
    for (int i = 0; i < 10; i ++) {
        CCPhotoListModel *model = [[CCPhotoListModel alloc] init];
        model.time = @1499404700000;
        
        if (i == 0) {
            //            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电";
            
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 1) {
            
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 1;
            model.content = @"防静电附近考虑到萨卡代理商富士达";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 2) {
            
            model.time = @(1499404700000 - 10 * 60 * 1000);
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 2;
            model.content = @"防静电发的时刻辣椒粉啦都说范德萨卡立即法拉盛发时间肯定粉黛无设计费发神经打开了";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 3) {
            
            model.time = @(1499404700000 - 3 * 60 * 60 * 1000);
            
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电发的时刻辣椒粉啦都说范德萨卡立即法拉盛发时间肯定粉黛无设计费发神经打开了";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可";
        }else if (i == 4) {
            
            model.time = @(1499404700000 - 25 * 60 * 60 * 1000);
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可";
        }else if (i == 5) {
            
            model.time = @(1499404700000 - 50 * 60 * 60 * 1000);
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥辣的手机扣了范德萨家里看咖啡发视频卡洛斯发的卡死了到发送番茄味 二分无人芙蓉王企鹅服";
        }else if (i == 6) {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"jfkldsajkl45646";
        }else if (i == 7) {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 2;
            //            model.content = @"kfl;dsak;l56ffwfas都是";
            model.isZan = YES;
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"jfkldsajkl45646";
        }else {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电飞机带我家范德萨金佛期望发改委及饿哦结构冈萨加偶然激光器";
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }
        
        model.name = [NSString stringWithFormat:@"名字%d", i];
        
        [array1 addObject:model];
    }
    
    for (int i = 0; i < 8; i ++) {
        CCPhotoListModel *model = [[CCPhotoListModel alloc] init];
        model.time = @(1499404700000 - 367 * 24 * 60 * 60 * 1000.0);
        
        if (i == 0) {
            //            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电";
            
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 1) {
            
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 1;
            model.content = @"防静电附近考虑到萨卡代理商富士达";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 2) {
            
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 2;
            model.content = @"防静电发的时刻辣椒粉啦都说范德萨卡立即法拉盛发时间肯定粉黛无设计费发神经打开了";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }else if (i == 3) {
            
            model.time = @(1499404700000 - 367 * 24 * 60 * 60 * 1000.0 - 3 * 60 * 60 * 1000);
            
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电发的时刻辣椒粉啦都说范德萨卡立即法拉盛发时间肯定粉黛无设计费发神经打开了";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可";
        }else if (i == 4) {
            
            model.time = @(1499404700000 - 367 * 24 * 60 * 60 * 1000.0 - 25 * 60 * 60 * 1000);
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可";
        }else if (i == 5) {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥辣的手机扣了范德萨家里看咖啡发视频卡洛斯发的卡死了到发送番茄味 二分无人芙蓉王企鹅服";
        }else if (i == 6) {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"kfl;dsak;l56ffwfas都是";
            //            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            //            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"jfkldsajkl45646";
        }else if (i == 7) {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 2;
            //            model.content = @"kfl;dsak;l56ffwfas都是";
            model.isZan = YES;
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"jfkldsajkl45646";
        }else {
            model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
            model.identification = 0;
            model.content = @"防静电飞机带我家范德萨金佛期望发改委及饿哦结构冈萨加偶然激光器";
            model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
            model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
            model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        }
        
        model.name = [NSString stringWithFormat:@"name%d", i];
        
        [array2 addObject:model];
    }
    
    for (int i = 0; i < 10; i ++) {
        CCPhotoListModel *model = [[CCPhotoListModel alloc] init];
        model.time = @(1499404700000 - 367 * 2 * 24 * 60 * 60 * 1000.0);
        model.url = @"http://pic.58pic.com/58pic/12/01/79/95h58PICe9B.jpg";
        model.identification = 0;
        model.content = @"防静电";
        
        model.originUrl = @"http://pic32.nipic.com/20130826/5345291_085123209000_2.jpg";
        model.originPicture = @"http://www.315online.com/uploads/allimg/c090630/12463D4EE0-CZ6.jpg";
        model.originText = @"富家大室可减肥快来撒范德萨借款家分店手机扣了奉公克己额外人开疆辟土科技馆撇";
        model.name = [NSString stringWithFormat:@"name%d", i];
        
        [array3 addObject:model];
    }
    [self.dataArray addObject:array1];
    [self.dataArray addObject:array2];
    [self.dataArray addObject:array3];
    
    [self.tableView reloadData];
}

- (void)setupUI
{
    [self.view addSubview:self.tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.and.trailing.equalTo(@0);
        make.top.equalTo(self.mas_topLayoutGuide);
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
    }];
}

#pragma mark -UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.dataArray objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *iden = @"CCPhotoListCell";
    CCPhotoListCell *cell = [tableView dequeueReusableCellWithIdentifier:iden];
    if (!cell) {
        cell = [[CCPhotoListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.model = self.dataArray[indexPath.section][indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"-click --%ld--%ld", indexPath.section, indexPath.row);
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0.01;
    }
    return 25;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        return nil;
    }
    
    CCPhotoListModel *model = (CCPhotoListModel *)[self.dataArray[section] firstObject];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[model.time longValue]/1000];
    NSDateFormatter *form = [[NSDateFormatter alloc] init];
    [form setDateFormat:@"yyyy"];
    NSString *dateStr = [form stringFromDate:date];
    
    UIView *headView = [[UIView alloc] init];
    headView.backgroundColor = [UIColor colorWithHex:0xf5f7fa];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 100, 25)];
    label.textColor = [UIColor colorWithHex:0x434A54];
    label.font = [UIFont boldSystemFontOfSize:13];
    label.text = dateStr;
    [headView addSubview:label];
    
    return headView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == self.dataArray.count - 1) {
        return 0.01;
    }
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (section == self.dataArray.count - 1) {
        return nil;
    }
    UIView *footView = [[UIView alloc] init];
    footView.backgroundColor = [UIColor colorWithHex:0xf5f7fa];
    return footView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"contentOffset: %.2f", scrollView.contentOffset.y);
    NSArray *array = [self.tableView indexPathsForVisibleRows];
    NSIndexPath *indexPath = [array firstObject];
    CGRect rectInTableView = [self.tableView rectForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:indexPath.section]];
    CGRect rect = [self.tableView convertRect:rectInTableView toView:self.view];
    
    NSLog(@"%.2f", rect.origin.y);
    if (rect.origin.y <= (64 + 25)) {
        
        CCPhotoListModel *model = (CCPhotoListModel *)[self.dataArray[indexPath.section] firstObject];
        
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:[model.time longValue]/1000];
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"yyyy"];
        NSString *dateStr = [form stringFromDate:date];
        self.timeLabel.text = [NSString stringWithFormat:@"%@年", dateStr];
    }
    
    if (scrollView.contentOffset.y > 0) {
        //显示
        [self.view addSubview:self.displayTimeView];
        [self.displayTimeView addSubview:self.timeLabel];
        self.displayTimeView.hidden = NO;
        self.timeLabel.hidden = NO;
        
    }else {
        //隐藏
        self.displayTimeView.hidden = YES;
        self.timeLabel.hidden = YES;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
