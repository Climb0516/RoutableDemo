//
//  ModulsRoutable.m
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import "HomeRoutable.h"

#import "Routable.h"
#import "RoutableConstant.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation HomeRoutable

//跳转VC注册
+ (void)loadHomeRoutable {
    Routable *routable = [Routable sharedRouter];
    [routable map:[FirstViewController Identify] toController:[FirstViewController class]];
    [routable map:[SecondViewController Identify] toController:[SecondViewController class]];
}

//不带参数的Routable跳转
+ (void)firstTestRoutable {
    [[Routable sharedRouter] open:[FirstViewController Identify] animated:YES];
}

//带参数跳转
+ (void)secondTestRoutableWithTitleString:(NSString *)urlString {
    NSMutableDictionary *mmDict = [NSMutableDictionary new];
    [mmDict setValue:urlString forKey:ROUTE_HOME_SECOND];
    [[Routable sharedRouter] open:[SecondViewController Identify] animated:YES extraParams:mmDict];
}

@end
