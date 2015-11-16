//
//  WRBButton.h
//  WeChat
//
//  Created by qianfeng on 15/8/24.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WRBButton : UIButton
//添加点击后执行的block
// void action(ZTButton *button);
@property (copy,nonatomic) void (^action)(WRBButton *button);

@end
