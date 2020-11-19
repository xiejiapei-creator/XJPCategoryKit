//
//  XJPAppDelegate.m
//  XJPCategoryKit
//
//  Created by xiejiapei-creator on 11/19/2020.
//  Copyright (c) 2020 xiejiapei-creator. All rights reserved.
//

#import "XJPAppDelegate.h"
#import "XJPViewController.h"

@implementation XJPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    XJPViewController *rootVC = [[XJPViewController alloc] init];
    UINavigationController *mainNC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = mainNC;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
