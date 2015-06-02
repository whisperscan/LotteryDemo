//
//  LDBuyViewController.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "LDBuyViewController.h"
#import "LDTitleButton.h"

@interface LDBuyViewController ()

@end

@implementation LDBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置title view为一个自定义的button
//    NSString *text = @"全部彩种";
//    
//    NSDictionary *dictionary = @{
//                                 NSFontAttributeName : [UIFont systemFontOfSize:14.0]
//                                 };
//    
//    CGRect bounds = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:dictionary context:nil];
    
    LDTitleButton *button = [[LDTitleButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    
    [button setTitle:@"全部彩种" forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:14.0];
    
//    button.bounds = CGRectMake(0, 0, 50, 44);
//    button.bounds = self.navigationItem.titleView.bounds;
    [button setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    
//    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = button;
    
}

- (void)buttonClick
{
    NSLog(@"%s",__func__);
}

@end
