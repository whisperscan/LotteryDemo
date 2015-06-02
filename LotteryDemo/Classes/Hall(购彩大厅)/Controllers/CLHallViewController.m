//
//  CLHallViewController.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "CLHallViewController.h"

@interface CLHallViewController ()

@end

@implementation CLHallViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // 自定义一个bar button
    NSDictionary *dictionary = @{
                                 NSFontAttributeName : [UIFont systemFontOfSize:14.0]
                                 };

    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [barButton setTitleTextAttributes:dictionary forState:UIControlStateNormal];
    
    [self.navigationItem setBackBarButtonItem:barButton];
}

@end
