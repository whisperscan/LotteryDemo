//
//  LDNavigationController.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "LDNavigationController.h"

@interface LDNavigationController ()

@end

@implementation LDNavigationController

+ (void)initialize
{
    if(self == [LDNavigationController class])
    {
        // 获取所有导航条
        UINavigationBar *navBar = [UINavigationBar appearance];
        
        // 设置所有导航条的背景颜色
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        
        NSDictionary *dictionary = @{
                                     NSFontAttributeName : [UIFont systemFontOfSize:14.0],
                                     NSForegroundColorAttributeName : [UIColor whiteColor]
                                     };
        // 设置中单TitleLabel字体
        [navBar setTitleTextAttributes:dictionary];
        
        // 设置主题颜色(可以使title label之外的字体颜色为白色)
        [navBar setTintColor:[UIColor whiteColor]];
 
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:animated];
}

@end
