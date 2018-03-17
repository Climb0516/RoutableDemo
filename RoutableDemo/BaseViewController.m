//
//  BaseViewController.m
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (instancetype)initWithRouterParams:(NSDictionary *)params {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

+ (NSString *)Identify {
    return NSStringFromClass([self class]);
}

@end
