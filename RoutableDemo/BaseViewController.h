//
//  BaseViewController.h
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (instancetype)initWithRouterParams:(NSDictionary *)params;

+ (NSString *)Identify;

@end
