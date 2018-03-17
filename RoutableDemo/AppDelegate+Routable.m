//
//  AppDelegate+Routable.m
//  Micropulse
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 iChoice. All rights reserved.
//

#import "AppDelegate+Routable.h"

#import "HomeRoutable.h"

@implementation AppDelegate (Routable)

- (void)loadRoutable {
    [HomeRoutable loadHomeRoutable];
}

@end
