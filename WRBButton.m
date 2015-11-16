//
//  WRBButton.m
//  WeChat
//
//  Created by qianfeng on 15/8/24.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import "WRBButton.h"

@implementation WRBButton

-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
-(void)btnClick:(WRBButton *)button
{
    //作用: 原来被点击执行target-action对应的方法
    //现在: 判断action是否已经设置block, 如果被设置, 执行block
    if(self.action)
    {
        self.action(button);
    }
}

@end
