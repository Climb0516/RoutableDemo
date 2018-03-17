//
//  ModulsRoutable.h
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeRoutable : NSObject

+ (void)loadHomeRoutable;//模块routable注册

+ (void)firstTestRoutable;//不带参数
+ (void)secondTestRoutableWithTitleString:(NSString *)urlString;//带参数

@end
