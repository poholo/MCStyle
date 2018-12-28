//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCColor.h"

#import "MCStyleManager.h"
#import "MCColorConfig.h"


@implementation MCColor

+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b {
    return [self r:r g:g b:b a:0xff];
}

+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b a:(uint8_t)a {
    return [self colorWithRed:r / 255.f green:g / 255.f blue:b / 255.f alpha:a / 255.f];
}

+ (UIColor *)rgba:(NSUInteger)rgba {
    return [self r:(uint8_t) ((rgba >> 24) & 0xFF)
                 g:(uint8_t) ((rgba >> 16) & 0xFF)
                 b:(uint8_t) ((rgba >> 8) & 0xFF)
                 a:(uint8_t) (rgba & 0xFF)];
}

+ (UIColor *)rgb:(NSUInteger)rgb {
    return [self r:(uint8_t) ((rgb >> 16) & 0xFF)
                 g:(uint8_t) ((rgb >> 8) & 0xFF)
                 b:(uint8_t) (rgb & 0xFF)
                 a:0xFF];
}

+ (UIColor *)rgbaString:(NSString *)hexString {
    if (!hexString)
        return nil;

    NSString *hex = [NSString stringWithString:hexString];
    if ([hex hasPrefix:@"#"])
        hex = [hex substringFromIndex:1];

    if (hex.length == 6)
        hex = [hex stringByAppendingString:@"FF"];
    else if (hex.length != 8)
        return nil;

    uint32_t rgba;
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    [scanner scanHexInt:&rgba];
    return [MCColor rgba:rgba];
}

+ (UIColor *)colorI {
    UIColor *custom = [MCStyleManager share].colorConfig.colorI;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x333333];
}

+ (UIColor *)colorII {
    UIColor *custom = [MCStyleManager share].colorConfig.colorII;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x666666];
}

+ (UIColor *)colorIII {
    UIColor *custom = [MCStyleManager share].colorConfig.colorIII;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x999999];
}

+ (UIColor *)colorIV {
    UIColor *custom = [MCStyleManager share].colorConfig.colorIV;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xcacaca];
}

+ (UIColor *)colorV {
    UIColor *custom = [MCStyleManager share].colorConfig.colorV;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xf7f7f9];
}

+ (UIColor *)colorVI {
    UIColor *custom = [MCStyleManager share].colorConfig.colorVI;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xdedede];
}

+ (UIColor *)colorVII {
    UIColor *custom = [MCStyleManager share].colorConfig.colorVII;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x76bdff];
}

+ (UIColor *)colorVIII {
    UIColor *custom = [MCStyleManager share].colorConfig.colorVIII;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xffbc1c];
}

+ (UIColor *)colorIX {
    UIColor *custom = [MCStyleManager share].colorConfig.colorIX;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x7789a8];
}

+ (UIColor *)colorX {
    UIColor *custom = [MCStyleManager share].colorConfig.colorX;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xebf2fa];
}

+ (UIColor *)colorXI {
    UIColor *custom = [MCStyleManager share].colorConfig.colorXI;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0x30c84d];
}

+ (UIColor *)colorXII {
    UIColor *custom = [MCStyleManager share].colorConfig.colorXII;
    if (custom) {
        return custom;
    }
    return [MCColor rgb:0xff6d69];
}

+ (UIColor *)randomImageColor {
    static dispatch_once_t once_t;
    static NSMutableArray *randomColors;
    dispatch_once(&once_t, ^{
        randomColors = [NSMutableArray array];
        [randomColors addObject:[MCColor rgb:0x77B2CF]];
        [randomColors addObject:[MCColor rgb:0x7EA3B0]];
        [randomColors addObject:[MCColor rgb:0xA99DCA]];
        [randomColors addObject:[MCColor rgb:0x7F9DC1]];
        [randomColors addObject:[MCColor rgb:0x98CAAE]];
        [randomColors addObject:[MCColor rgb:0xE2D0EB]];
    });

    return randomColors[arc4random() % 6];
}


@end