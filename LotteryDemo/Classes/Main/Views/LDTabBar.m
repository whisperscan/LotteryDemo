//
//  LDTabBar.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "LDTabBar.h"

@interface LDTabBar ()

@property (weak, nonatomic) UIButton *selectedButton;

@end

@implementation LDTabBar


#pragma mark - 初始化方法

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self addButton];
    }
    
    return self;
}

#pragma mark - 添加按钮方法

- (void)addButtonWithImageName:(NSString *)imageName withHighligthImageName:(NSString *)hImageName
{
    UIButton *btn = [[UIButton alloc]init];
    
    btn.tag = self.subviews.count;
    
    // 设置按钮图片
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:hImageName] forState:UIControlStateSelected];
    
    // 设置监听器
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:btn];
    
    if(btn.tag == 0)  [self buttonClick:btn];
}

- (void)addButton
{
    for(int i = 0;i < 5;++i)
    {
        UIButton *btn = [[UIButton alloc]init];
        
        btn.tag = i;
        
        NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *hImageName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        
        // 设置按钮图片
        [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:hImageName] forState:UIControlStateSelected];
        
        // 设置监听器
        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:btn];
        
        if(i == 0)  [self buttonClick:btn];
    }
}

- (void)buttonClick:(UIButton *)button
{
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
    
    // 设置控制器跳转
    if(self.block)  self.block(button.tag);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat vWidth = self.bounds.size.width;
    CGFloat vHeight = self.bounds.size.height;
    CGFloat btnW = vWidth / self.subviews.count;
    CGFloat btnH = vHeight;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    
    UIButton *btn = nil;
    
    // 调整每个按钮的frame
    for(int i = 0;i < self.subviews.count;++i)
    {
        btn = self.subviews[i];
        btnX = i * btnW;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
}

@end
