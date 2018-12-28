//
//  RootViewController.m
//  MCStyleDemo
//
//  Created by majiancheng on 2018/12/28.
//  Copyright © 2018 majiancheng. All rights reserved.
//

#import "RootViewController.h"

#import "SampleCell.h"
#import "RootDataVM.h"

@interface RootViewController ()

@property(nonatomic, strong) RootDataVM *dataVM;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[SampleCell class] forCellReuseIdentifier:NSStringFromClass(SampleCell.class)];
    [self loadData];
}

- (void)loadData {
    [self.dataVM refresh];
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SampleCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([SampleCell class]) forIndexPath:indexPath];
    [cell loadData:self.dataVM.dataList[indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataVM.dataList.count;
}

#pragma mark - getter

- (RootDataVM *)dataVM {
    if (!_dataVM) {
        _dataVM = [RootDataVM new];
    }
    return _dataVM;
}

@end
