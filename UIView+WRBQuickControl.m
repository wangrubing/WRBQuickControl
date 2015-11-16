//
//  UIView+WRBQuickControl.m
//  AVAudioPlayerDemo
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 quiet. All rights reserved.
//

#import "UIView+WRBQuickControl.h"

@implementation UIView (WRBQuickControl)
//创建系统按钮
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame
                                title:(NSString *)titile
                               action:(void(^)(WRBButton *button))action
{
    WRBButton *button = [WRBButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}

+(UIButton *)systemButtonWithFrame:(CGRect)frame
                             title:(NSString *)titile
                            action:(void(^)(WRBButton *button))action
{
    WRBButton *button = [WRBButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    button.action = action;
    return button;
}

//创建图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame
                               title:(NSString *)titile
                               image:(NSString *)image
                     backgroundImage:(NSString *)backgroundImage
                              action:(void(^)(WRBButton *button))action
{
    WRBButton *button = [WRBButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}

+(UIButton *)imageButtonWithFrame:(CGRect)frame
                            title:(NSString *)titile
                            image:(NSString *)image
                  backgroundImage:(NSString *)backgroundImage
                           action:(void(^)(WRBButton *button))action
{
    WRBButton *button = [WRBButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:titile forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
    button.action = action;
    return button;

}

//创建label
-(UILabel *)addLabelWithFrame:(CGRect)frame
                        title:(NSString *)title
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    [self addSubview:label];
    return label;
}

//创建imageView
-(UIImageView *)addImageViewWithFrame:(CGRect)frame
                                image:(NSString *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    [self addSubview:imageView];
    return imageView;
}

//创建textfiled
-(UITextField *)addTextFieldWithFrame:(CGRect)frame
                          placeholder:(NSString *)holder
                          borderStyle:(UITextBorderStyle)style
                             delegate:(id)delegate
{
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.placeholder = holder;
    textField.borderStyle = style;
    textField.delegate = delegate;
    [self addSubview:textField];
    return textField;
}

/** 创建左边图片，中间文字，输入框的控件，类似于微信的输入框 */
-(id)addInputTextFieldWithFrame:(CGRect)frame andBackgroundImage:(NSString *)backImage andImage:(NSString *)image andMessage:(NSString *)message
{    
    UIImageView *imageView =[[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:backImage];
    imageView.userInteractionEnabled = YES;
    [self addSubview:imageView];
    
    UIImageView *leftImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 20, 20)];
    leftImage.center = CGPointMake(30, frame.size.height/2);
    leftImage.image = [UIImage imageNamed:image];
    [imageView addSubview:leftImage];
    
    UITextField *rightTextField = [[UITextField alloc]initWithFrame:CGRectMake(60, 0,frame.size.width-50,frame.size.height)];
    rightTextField.placeholder = message;
    [imageView addSubview:rightTextField];
    
    return imageView;
}
@end
