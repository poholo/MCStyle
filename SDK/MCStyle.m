//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCStyle.h"

#import "MCStyleManager.h"
#import "MCStyleConfig.h"


@implementation MCStyle

+ (UIEdgeInsets)contentInsetI {
    NSValue *custom = [MCStyleManager share].styleConfig.contentInsetI;
    if (custom) {
        return [custom UIEdgeInsetsValue];
    }
    return UIEdgeInsetsZero;
}

+ (UIEdgeInsets)contentInsetII {
    NSValue *custom = [MCStyleManager share].styleConfig.contentInsetII;
    if (custom) {
        return [custom UIEdgeInsetsValue];
    }
    return UIEdgeInsetsZero;
}

+ (UIEdgeInsets)contentInsetIII {
    NSValue *custom = [MCStyleManager share].styleConfig.contentInsetIII;
    if (custom) {
        return [custom UIEdgeInsetsValue];
    }
    return UIEdgeInsetsZero;
}

+ (CGFloat)borderI {
    NSNumber *custom = [MCStyleManager share].styleConfig.borderI;
    if (custom) {
        return [custom floatValue];
    }
    return 0;
}

+ (CGFloat)borderII {
    NSNumber *custom = [MCStyleManager share].styleConfig.borderII;
    if (custom) {
        return [custom floatValue];
    }
    return 0;
}

+ (CGFloat)borderIII {
    NSNumber *custom = [MCStyleManager share].styleConfig.borderIII;
    if (custom) {
        return [custom floatValue];
    }
    return 0;
}

+ (UIImage *)imageI {
    NSString *custom = [MCStyleManager share].styleConfig.imageI;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageII {
    NSString *custom = [MCStyleManager share].styleConfig.imageII;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIII {
    NSString *custom = [MCStyleManager share].styleConfig.imageIII;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIV {
    NSString *custom = [MCStyleManager share].styleConfig.imageIV;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageV {
    NSString *custom = [MCStyleManager share].styleConfig.imageV;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageVI {
    NSString *custom = [MCStyleManager share].styleConfig.imageVI;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}


+ (UIImage *)imageVII {
    NSString *custom = [MCStyleManager share].styleConfig.imageVII;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageVIII {
    NSString *custom = [MCStyleManager share].styleConfig.imageVIII;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIX {
    NSString *custom = [MCStyleManager share].styleConfig.imageIX;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageX {
    NSString *custom = [MCStyleManager share].styleConfig.imageX;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageI_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageI_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageII_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageII_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIII_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageIII_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIV_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageI;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageV_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageV_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageVII_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageVII_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageVIII_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageVIII_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageIX_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageIX_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)imageX_s {
    NSString *custom = [MCStyleManager share].styleConfig.imageX_s;
    if (custom) {
        return [UIImage imageNamed:custom];
    }
    return nil;
}

+ (UIImage *)customImage:(NSString *)key {
    NSString *custom = [MCStyleManager share].styleConfig.customDict[key];
    return [UIImage imageNamed:custom];
}

+ (UIEdgeInsets *)customInsets:(NSString *)key {
    NSString *custom = [MCStyleManager share].styleConfig.customDict[key];
    if (custom) {
        return [custom UIEdgeInsetsValue];
    }
    return UIEdgeInsetsZero;
}

@end
