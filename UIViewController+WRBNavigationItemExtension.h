//
//  UIViewController+WRBNavigationItemExtension.h
//  WeChat
//
//  Created by qianfeng on 15/8/24.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WRBButton;

@interface UIViewController (WRBNavigationItemExtension)

/** 设置导航条背景 */
-(void)setNavigationBarBackgroundImage:(NSString *)image;

/** 设置导航条中间标题 */
/** 文字标题 */
-(id)setTextTitleViewWithFrame:(CGRect)frame
                         title:(NSString *)titile
                         textColor:(UIColor *)color
                      fontSize:(int)size;
/** 图片标题 */
-(id)setImageTitleViewWithFrame:(CGRect)frame
                          image:(NSString *)image;
/** 选项卡标题 */
-(id)setSegmentTitleViewWithItems:(NSArray *)items;

/** 设置导航条左边按钮 */
/** 既有图标又有文字的左边按钮 */
-(id)setLeftBarButtonItemWithFrame:(CGRect)frame
                             title:(NSString *)titile
                        titleColor:(UIColor *)titleColor
                             image:(NSString *)image
                       imageInsets:(UIEdgeInsets)insets
                         backImage:(NSString *)backImage
                   selectBackImage:(NSString *)selectBackImage
                            action:(void(^)(WRBButton *button))action;
/** 只有图片的左边按钮 */
-(id)setLeftImageBarButtonItemWithFrame:(CGRect)frame
                                  image:(NSString *)image
                            selectImage:(NSString *)selectImage
                                 action:(void(^)(WRBButton *button))action;
/** 只有文字的左边按钮 */
-(id)setLeftTextBarButtonItemWithFrame:(CGRect)frame
                                 title:(NSString *)titile
                            titleColor:(UIColor *)titleColor
                             backImage:(NSString *)backImage
                       selectBackImage:(NSString *)selectBackImage
                                action:(void(^)(WRBButton *button))action;


/** 设置导航条右边按钮 */
/** 既有图标又有文字的右边按钮 */
-(id)setRightBarButtonItemWithFrame:(CGRect)frame
                              title:(NSString *)titile
                         titleColor:(UIColor *)titleColor
                              image:(NSString *)image
                        imageInsets:(UIEdgeInsets)insets
                          backImage:(NSString *)backImage
                    selectBackImage:(NSString *)selectBackImage
                             action:(void(^)(WRBButton *button))action;

/** 只有图片的右边按钮 */
-(id)setRightImageBarButtonItemWithFrame:(CGRect)frame
                                   image:(NSString *)image
                             selectImage:(NSString *)selectImage
                                  action:(void(^)(WRBButton *button))action;

/** 只有文字的右边按钮 */
-(id)setRightTextBarButtonItemWithFrame:(CGRect)frame
                                  title:(NSString *)titile
                             titleColor:(UIColor *)titleColor
                              backImage:(NSString *)backImage
                        selectBackImage:(NSString *)selectBackImage
                                 action:(void(^)(WRBButton *button))action;

/** 添加左右自定义按钮 */
- (void)setNavigationLeftItem:(UIButton *)leftButton rightItem:(UIButton *)rightButton;
@end
