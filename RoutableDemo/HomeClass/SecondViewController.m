//
//  SecondViewController.m
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import "SecondViewController.h"

#import "RoutableConstant.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (instancetype)initWithRouterParams:(NSDictionary *)params {
    self = [super initWithRouterParams:params];
    if (self) {
        self.titleString = params[ROUTE_HOME_SECOND];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = [NSString stringWithFormat:@"穿参的Routable:%@",self.titleString];
    self.view.backgroundColor       = [UIColor yellowColor];
}

@end
