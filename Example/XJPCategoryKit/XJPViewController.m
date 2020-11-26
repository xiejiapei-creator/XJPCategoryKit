//
//  XJPViewController.m
//  XJPCategoryKit
//
//  Created by xiejiapei-creator on 11/19/2020.
//  Copyright (c) 2020 xiejiapei-creator. All rights reserved.
//

#import "XJPViewController.h"
#import <XJPCategoryKit.h>

@interface XJPViewController ()

@end

@implementation XJPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 判断一个字符串是否都是纯数字
    NSString *testString = @"123456";
    if ([testString judgeIsPureInt])
    {
        NSLog(@"该字符串为纯数字，说明生成的库可用");
    }
}

@end
