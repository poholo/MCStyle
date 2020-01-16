//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCStyle : NSObject

+ (UIEdgeInsets)contentInsetI;

+ (UIEdgeInsets)contentInsetII;

+ (UIEdgeInsets)contentInsetIII;

+ (CGFloat)borderI;

+ (CGFloat)borderII;

+ (CGFloat)borderIII;

+ (UIImage *)imageI;

+ (UIImage *)imageII;

+ (UIImage *)imageIII;

+ (UIImage *)imageIV;

+ (UIImage *)imageV;

+ (UIImage *)imageVI;

+ (UIImage *)imageVII;

+ (UIImage *)imageVIII;

+ (UIImage *)imageIX;

+ (UIImage *)imageX;

+ (UIImage *)imageI_s;

+ (UIImage *)imageII_s;

+ (UIImage *)imageIII_s;

+ (UIImage *)imageIV_s;

+ (UIImage *)imageV_s;

+ (UIImage *)imageVII_s;

+ (UIImage *)imageVIII_s;

+ (UIImage *)imageIX_s;

+ (UIImage *)imageX_s;

+ (UIImage *)customImage:(NSString *)key;

+ (UIEdgeInsets)customInsets:(NSString *)key;

+ (id)customValue:(NSString *)key;
@end
