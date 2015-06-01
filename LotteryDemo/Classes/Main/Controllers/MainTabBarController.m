//
//  MainTabBarController.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "MainTabBarController.h"
#import "LDTabBar.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSLog(@"%@", NSStringFromCGRect(self.tabBar.frame));
    
    [self.tabBar removeFromSuperview];
    
    LDTabBar *bar = [[LDTabBar alloc] initWithFrame:self.tabBar.frame];
    
    bar.block = ^(NSInteger index)
    {
        self.selectedIndex = index;
    };
    
    
    [self.view addSubview:bar];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    
//     NSLog(@"%@", NSStringFromCGRect(self.tabBarController.tabBarItem));
//}




@end
