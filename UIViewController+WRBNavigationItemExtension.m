//
//  UIViewController+WRBNavigationItemExtension.m
//  WeChat
//
//  Created by qianfeng on 15/8/24.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import "UIViewController+WRBNavigationItemExtension.h"
#import "WRBButton.h"

@implementation UIViewController (WRBNavigationItemExtension)

/** 设置导航条背景 */
-(void)setNavigationBarBackgroundImage:(NSString *)image
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:image] forBarMetrics:UIBarMetricsDefault];
}

/** 设置导航条中间标题 */
/** 文字标题 */
-(id)setTextTitleViewWithFrame:(CGRect)frame
                     title:(NSString *)titile
                 textColor:(UIColor *)color
                  fontSize:(int)size
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = titile;
    label.textColor = color;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:size];
    self.navigationItem.titleView = label;
    return label;
}
/** 图片标题 */
-(id)setImageTitleViewWithFrame:(CGRect)frame
                          image:(NSString *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    self.navigationItem.titleView = imageView;
    return imageView;
}
/** 选项卡标题 */
-(id)setSegmentTitleViewWithItems:(NSArray *)items
{
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.selectedSegmentIndex = 0;
    self.navigationItem.titleView = segment;
    return segment;
}

/** 设置导航条左边按钮 */
/** 既有图标又有文字的左边按钮 */
-(id)setLeftBarButtonItemWithFrame:(CGRect)frame
                             title:(NSString *)titile
                        titleColor:(UIColor *)titleColor
                             image:(NSString *)image
                       imageInsets:(UIEdgeInsets)insets
                         backImage:(NSString *)backImage
                   selectBackImage:(NSString *)selectBackImage
                            action:(void(^)(WRBButton *button))action
{
    WRBButton *leftButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = frame;
    [leftButton setTitle:titile forState:UIControlStateNormal];
    [leftButton setTitleColor:titleColor forState:UIControlStateNormal];
    [leftButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    leftButton.imageEdgeInsets = insets;
    [leftButton setBackgroundImage:[UIImage imageNamed:backImage] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:selectBackImage] forState:UIControlStateHighlighted];
    leftButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    leftButton.action = action;
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    return leftButton;
}
/** 只有图片的左边按钮 */
-(id)setLeftImageBarButtonItemWithFrame:(CGRect)frame
                                  image:(NSString *)image
                            selectImage:(NSString *)selectImage
                                 action:(void(^)(WRBButton *button))action
{
    WRBButton *leftButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = frame;
    [leftButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [leftButton setImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    leftButton.action = action;
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    return leftButton;
}

/** 只有文字的左边按钮 */
-(id)setLeftTextBarButtonItemWithFrame:(CGRect)frame
                                  title:(NSString *)titile
                             titleColor:(UIColor *)titleColor
                             backImage:(NSString *)backImage
                       selectBackImage:(NSString *)selectBackImage
                                 action:(void(^)(WRBButton *button))action
{
    WRBButton *leftButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = frame;
    [leftButton setTitle:titile forState:UIControlStateNormal];
    [leftButton setTitleColor:titleColor forState:UIControlStateNormal];
    leftButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [leftButton setBackgroundImage:[UIImage imageNamed:backImage] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:selectBackImage] forState:UIControlStateHighlighted];
    leftButton.action = action;
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    return leftButton;
}


/** 设置导航条右边按钮 */
/** 既有图标又有文字的右边按钮 */
-(id)setRightBarButtonItemWithFrame:(CGRect)frame
                              title:(NSString *)titile
                         titleColor:(UIColor *)titleColor
                              image:(NSString *)image
                        imageInsets:(UIEdgeInsets)insets
                          backImage:(NSString *)backImage
                    selectBackImage:(NSString *)selectBackImage
                             action:(void(^)(WRBButton *button))action
{
    WRBButton *rightButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = frame;
    [rightButton setTitle:titile forState:UIControlStateNormal];
    [rightButton setTitleColor:titleColor forState:UIControlStateNormal];
    [rightButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    rightButton.imageEdgeInsets = insets;
    [rightButton setBackgroundImage:[UIImage imageNamed:backImage] forState:UIControlStateNormal];
    [rightButton setBackgroundImage:[UIImage imageNamed:selectBackImage] forState:UIControlStateHighlighted];
    rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    rightButton.action = action;
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    return rightButton;
}

/** 只有图片的右边按钮 */
-(id)setRightImageBarButtonItemWithFrame:(CGRect)frame
                                   image:(NSString *)image
                             selectImage:(NSString *)selectImage
                                  action:(void(^)(WRBButton *button))action
{
    WRBButton *rightButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = frame;
    [rightButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [rightButton setImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    rightButton.action = action;
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    return rightButton;
}

/** 只有文字的右边按钮 */
-(id)setRightTextBarButtonItemWithFrame:(CGRect)frame
                                  title:(NSString *)titile
                             titleColor:(UIColor *)titleColor
                              backImage:(NSString *)backImage
                        selectBackImage:(NSString *)selectBackImage
                             action:(void(^)(WRBButton *button))action
{
    WRBButton *rightButton = [WRBButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = frame;
    [rightButton setTitle:titile forState:UIControlStateNormal];
    [rightButton setTitleColor:titleColor forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [rightButton setBackgroundImage:[UIImage imageNamed:backImage] forState:UIControlStateNormal];
    [rightButton setBackgroundImage:[UIImage imageNamed:selectBackImage] forState:UIControlStateHighlighted];
    rightButton.action = action;
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    return rightButton;
}

/** 添加左右自定义按钮 */
- (void)setNavigationLeftItem:(UIButton *)leftButton rightItem:(UIButton *)rightButton{
    if(leftButton!=nil){
        UIBarButtonItem *leftBar = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
        self.navigationItem.leftBarButtonItem =leftBar;
    }
    if(rightButton!=nil){
        UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
        self.navigationItem.rightBarButtonItem = rightBar;
    }
}
@end
