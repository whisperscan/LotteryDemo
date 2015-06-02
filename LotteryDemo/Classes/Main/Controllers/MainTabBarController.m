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
    
//    [self.tabBar removeFromSuperview];
    
    LDTabBar *bar = [[LDTabBar alloc] initWithFrame:self.tabBar.bounds];
    
    bar.block = ^(NSInteger index)
    {
        self.selectedIndex = index;
    };
    
    [self.tabBar addSubview:bar];
    
    // 根据TabBar有多少个NavigationController添加按钮
    for(int i = 0;i < self.viewControllers.count;++i)
    {
        NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *hImageName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        
        [bar addButtonWithImageName:imageName withHighligthImageName:hImageName];
    }
    
//    // 获取所有导航条
//    UINavigationBar *navBar = [UINavigationBar appearance];
//    
//    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    
//     NSLog(@"%@", NSStringFromCGRect(self.tabBarController.tabBarItem));
//}




@end
