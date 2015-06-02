//
//  LDTitleButton.m
//  LotteryDemo
//
//  Created by caramel on 6/1/15.
//  Copyright (c) 2015 caramel. All rights reserved.
//

#import "LDTitleButton.h"

@implementation LDTitleButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    
    return self;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    // 计算文字的frame
    NSDictionary *dictionary = @{
                                 NSFontAttributeName : [UIFont systemFontOfSize:14.0]
                                 };
    
   CGFloat w = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:dictionary context:nil].size.width;
    
    return CGRectMake(0, 0, w, contentRect.size.height);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat w = 30;
    
    return CGRectMake(contentRect.size.width - w, 0, w, contentRect.size.height);
}

@end
