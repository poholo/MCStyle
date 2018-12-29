//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCDto.h"

#import <UIKit/UIKit.h>

@interface MCColorConfig : MCDto

/***
 * 字体色 - 主要
 */
@property(nonatomic, strong) UIColor *colorI;

/***
 * 字体色 - 次要II
 */
@property(nonatomic, strong) UIColor *colorII;

/***
 * 字体色 - 次要III
 */
@property(nonatomic, strong) UIColor *colorIII;

/***
 * 字体色 - 提示性文字
 */
@property(nonatomic, strong) UIColor *colorIV;

/***
 * 背景 - 分行&底色
 */
@property(nonatomic, strong) UIColor *colorV;

/***
 * 分割线
 */
@property(nonatomic, strong) UIColor *colorVI;


/***
 * 主色 - I
 */
@property(nonatomic, strong) UIColor *colorVII;

/***
 * 主色 - II
 */
@property(nonatomic, strong) UIColor *colorVIII;

/***
 * 副主色 - I
 */
@property(nonatomic, strong) UIColor *colorIX;

/**
 * 副主色 - II
 */
@property(nonatomic, strong) UIColor *colorX;

/**
 * 副主色 - III
 */
@property(nonatomic, strong) UIColor *colorXI;

/**
 * 副主色 - IIII
 */
@property(nonatomic, strong) UIColor *colorXII;

@property(nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *customDict;

@end