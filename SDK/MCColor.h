//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCColor : UIColor

+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b;

+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b a:(uint8_t)a;

+ (UIColor *)rgba:(NSUInteger)rgba;

+ (UIColor *)rgb:(NSUInteger)rgba;

+ (UIColor *)rgbaString:(NSString *)hexString;

/***
 * 字体色 - 主要
 */
+ (UIColor *)colorI;

/***
 * 字体色 - 次要II
 */
+ (UIColor *)colorII;

/***
 * 字体色 - 次要III
 */
+ (UIColor *)colorIII;

/***
 * 字体色 - 提示性文字
 */
+ (UIColor *)colorIV;

/***
 * 背景 - 分行&底色
 */
+ (UIColor *)colorV;

/***
 * 分割线
 */
+ (UIColor *)colorVI;


/***
 * 主色 - I
 */
+ (UIColor *)colorVII;

/***
 * 主色 - II
 */
+ (UIColor *)colorVIII;

/***
 * 副主色 - I
 */
+ (UIColor *)colorIX;

/**
 * 副主色 - II
 */
+ (UIColor *)colorX;

/**
 * 副主色 - III
 */
+ (UIColor *)colorXI;

/**
 * 副主色 - IIII
 */
+ (UIColor *)colorXII;

+ (UIColor *)randomImageColor;

@end