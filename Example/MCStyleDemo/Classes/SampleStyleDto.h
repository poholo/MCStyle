//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCDto.h"

#import <UIKit/UIKit.h>

@interface SampleStyleDto : MCDto

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) UIColor *color;
@property(nonatomic, strong) UIFont *font;
@property(nonatomic, assign) UIEdgeInsets edgeInsets;

@end