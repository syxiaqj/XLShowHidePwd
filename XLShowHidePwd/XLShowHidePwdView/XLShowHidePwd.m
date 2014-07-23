//
//  XLShowHidePwd.m
//  Helloworld
//
//  Created by xqj on 14-7-23.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

#import "XLShowHidePwd.h"

@implementation XLShowHidePwd

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self addSubviews];
        [self setSubviews];
    }
    return self;
}

- (void)addSubviews
{
    myTextField = [[UITextField alloc] init];
    [self addSubview:myTextField];
    
    showPwdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:showPwdBtn];
}

- (void)setSubviews
{
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 1.0;
    self.layer.masksToBounds = YES;
    
    myTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    myTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    myTextField.secureTextEntry = YES;
    [myTextField addTarget:self
                    action:@selector(inputChanged:)
          forControlEvents:UIControlEventEditingChanged];
    
    showPwdBtn.hidden = YES;
    [showPwdBtn setImage:[UIImage imageNamed:@"pwd_open"] forState:UIControlStateNormal];
    [showPwdBtn setImage:[UIImage imageNamed:@"pwd_close"] forState:UIControlStateSelected];
    [showPwdBtn addTarget:self
                   action:@selector(showPwdBtnTuis:)
         forControlEvents:UIControlEventTouchUpInside];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    
    CGFloat btnWidth = 35.0;
    CGFloat btnHeight = height;
    
    CGFloat tfWidth = width - 35.0;
    CGFloat tfHeight = height;
    
    myTextField.frame = (CGRect){
        5.0, 0, tfWidth, tfHeight
    };
    
    showPwdBtn.frame = (CGRect){
        CGRectGetMaxX(myTextField.frame) - 5.0, 0, btnWidth, btnHeight
    };
}

#pragma mark - Pub

- (NSString *)value
{
    return myTextField.text;
}

#pragma mark - SEL

- (void)showPwdBtnTuis:(UIButton *)button
{
    showPwdBtn.selected = !showPwdBtn.selected;
    
    if (showPwdBtn.selected)
    {
        myTextField.secureTextEntry = NO;
    }
    else
    {
        myTextField.secureTextEntry = YES;
    }
}

- (void)inputChanged:(UITextField *)textField
{
    if ([textField.text isEqualToString:@""])
    {
        showPwdBtn.hidden = YES;
    }
    else
    {
        showPwdBtn.hidden = NO;
    }
}

@end
