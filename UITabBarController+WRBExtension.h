//
//  UITabBarController+WRBExtension.h
//  Test1
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (WRBExtension)
//为标签栏控制器添加一个界面
-(id)addViewControlerWithClass:(Class )cls
                         title:(NSString *)title
                         image:(NSString *)image
                   selectImage:(NSString *)selectImage;
@end
