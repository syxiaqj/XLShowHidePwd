//
//  XLShowHidePwd.h
//  Helloworld
//
//  Created by xqj on 14-7-23.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLShowHidePwd : UIView
{
    UITextField *myTextField;
    UIButton *showPwdBtn;
}

///输入的值
@property (nonatomic, strong) NSString *value;

@end
