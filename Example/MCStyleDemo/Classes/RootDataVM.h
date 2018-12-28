//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SampleStyleDto;


@interface RootDataVM : NSObject

@property(nonatomic, strong) NSMutableArray<SampleStyleDto *> *dataList;

- (void)refresh;

@end