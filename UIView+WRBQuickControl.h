//
//  UIView+WRBQuickControl.h
//  AVAudioPlayerDemo
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WRBButton.h"

@interface UIView (WRBQuickControl)
//创建系统按钮
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame
                                title:(NSString *)titile
                               action:(void(^)(WRBButton *button))action;

+(UIButton *)systemButtonWithFrame:(CGRect)frame
                             title:(NSString *)titile
                            action:(void(^)(WRBButton *button))action;

//创建图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame
                               title:(NSString *)titile
                               image:(NSString *)image
                     backgroundImage:(NSString *)backgroundImage
                              action:(void(^)(WRBButton *button))action;

+(UIButton *)imageButtonWithFrame:(CGRect)frame
                            title:(NSString *)titile
                            image:(NSString *)image
                  backgroundImage:(NSString *)backgroundImage
                           action:(void(^)(WRBButton *button))action;

//创建label
-(UILabel *)addLabelWithFrame:(CGRect)frame
                        title:(NSString *)title;

//创建imageView
-(UIImageView *)addImageViewWithFrame:(CGRect)frame
                                image:(NSString *)image;

//创建textfiled
-(UITextField *)addTextFieldWithFrame:(CGRect)frame
                          placeholder:(NSString *)holder
                          borderStyle:(UITextBorderStyle)style
                             delegate:(id)delegate;

/** 创建左边图片，中间文字，输入框的控件，类似于微信的输入框 */
-(id)addInputTextFieldWithFrame:(CGRect)frame andBackgroundImage:(NSString *)backImage andImage:(NSString *)image andMessage:(NSString *)message;
@end
