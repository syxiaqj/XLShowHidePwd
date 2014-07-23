//
//  MainVC.m
//  XLShowHidePwdView
//
//  Created by xqj on 14-7-23.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

#import "MainVC.h"
#import "XLShowHidePwd.h"

@interface MainVC ()

@end

@implementation MainVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"浪花一朵朵";
    
    pwdView = [[XLShowHidePwd alloc] initWithFrame:(CGRect){10, 100, 300, 40}];
    [self.view addSubview:pwdView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTuis:(id)sender
{
    NSLog(@"%@", pwdView.value);
}

@end
