//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MCColorConfig;
@class MCFontConfig;
@class MCStyleConfig;

typedef NSDictionary *(^MCStyleDataCallback)(void);

@interface MCStyleManager : NSObject

@property(nonatomic, copy) MCStyleDataCallback colorStyleDataCallback;
@property(nonatomic, copy) MCStyleDataCallback fontStyleDataCallBack;
@property(nonatomic, copy) MCStyleDataCallback styleDataCallback;

@property(nonatomic, readonly) MCColorConfig *colorConfig;
@property(nonatomic, readonly) MCFontConfig *fontConfig;
@property(nonatomic, readonly) MCStyleConfig *styleConfig;

+ (instancetype)share;

- (void)loadData;

@end