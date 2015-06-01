//
//  LDTabBar.h
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^LDTabBarBlock)(NSInteger index);

@interface LDTabBar : UIView

@property (copy, nonatomic) LDTabBarBlock block;

- (void)addButtonWithImageName:(NSString *)imageName withHighligthImageName:(NSString *)hImageName;

@end
