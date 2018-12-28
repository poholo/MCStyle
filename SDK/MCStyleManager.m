//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCStyleManager.h"

#import "MCColorConfig.h"
#import "MCFontConfig.h"
#import "MCStyleConfig.h"

@interface MCStyleManager ()

@property(nonatomic, strong) MCColorConfig *colorConfig;
@property(nonatomic, strong) MCFontConfig *fontConfig;
@property(nonatomic, strong) MCStyleConfig *styleConfig;

@end


@implementation MCStyleManager

+ (instancetype)share {
    static dispatch_once_t predicate;
    static MCStyleManager *manager;
    dispatch_once(&predicate, ^{
        manager = [MCStyleManager new];
    });
    return manager;
}

- (void)loadData {
    if (self.colorStyleDataCallback) {
        NSDictionary *dictionary = self.colorStyleDataCallback();
        self.colorConfig = [MCColorConfig createDto:dictionary];
    }

    if (self.fontStyleDataCallBack) {
        NSDictionary *dictionary = self.fontStyleDataCallBack();
        self.fontConfig = [MCFontConfig createDto:dictionary];
    }

    if (self.styleDataCallback) {
        NSDictionary *dictionary = self.styleDataCallback();
        self.styleConfig = [MCStyleConfig createDto:dictionary];
    }
}

@end