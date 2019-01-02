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
#import "MCStyleManager.h"

@interface RootViewController ()

@property(nonatomic, strong) RootDataVM *dataVM;

@end

@implementation RootViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"MCStyle";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[SampleCell class] forCellReuseIdentifier:NSStringFromClass(SampleCell.class)];
    [self loadData];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"CustomStyle" style:UIBarButtonItemStylePlain target:self action:@selector(customStyle)];
}

- (void)customStyle {
    [MCStyleManager share].colorStyleDataCallback = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomColor" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };
    [MCStyleManager share].fontStyleDataCallBack = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomFont" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };

    [MCStyleManager share].styleDataCallback = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomStyle" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };

    [[MCStyleManager share] loadData];

    RootViewController *vc = [RootViewController new];
    vc.title = @"MCStyle_Custom";
    [self.navigationController pushViewController:vc animated:YES];
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
