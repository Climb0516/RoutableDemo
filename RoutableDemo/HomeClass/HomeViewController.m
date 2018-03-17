//
//  HomeViewController.m
//  RoutableDemo
//
//  Created by 王攀登 on 2018/3/16.
//  Copyright © 2018年 王攀登. All rights reserved.
//

#import "HomeViewController.h"

#import "HomeRoutable.h"
#import "SecondViewController.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Home";
    
    UITableView *homeTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    homeTableView.dataSource = self;
    homeTableView.delegate   = self;
    [self.view addSubview:homeTableView];
    [homeTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

#pragma mark ============= TableViewDelegate ==============

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *Identity = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identity forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identity];
    }
    if (indexPath.row == 0) cell.textLabel.text = @"不穿参-Routable";
    else cell.textLabel.text = @"穿参-Routable";
    cell.textLabel.textColor = [UIColor blackColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
//        [HomeRoutable firstTestRoutable];
        SecondViewController *secondVC = [SecondViewController new];
        secondVC.titleString = @"哈哈哈哈";
        [self.navigationController pushViewController:secondVC animated:YES];
        return;
    }
    [HomeRoutable secondTestRoutableWithTitleString:@"哈哈哈哈哈"];
}


@end
