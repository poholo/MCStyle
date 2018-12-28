//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCColorConfig.h"
#import "MCColor.h"


@implementation MCColorConfig

- (void)setValue:(nullable id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"colorI"]) {
        self.colorI = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorII"]) {
        self.colorII = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorIII"]) {
        self.colorIII = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorIV"]) {
        self.colorIV = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorV"]) {
        self.colorV = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorVI"]) {
        self.colorVI = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorVII"]) {
        self.colorVII = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorVIII"]) {
        self.colorVIII = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorIX"]) {
        self.colorIX = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorX"]) {
        self.colorX = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorXI"]) {
        self.colorXI = [MCColor rgbaString:value];
    } else if ([key isEqualToString:@"colorXII"]) {
        self.colorXII = [MCColor rgbaString:value];
    } else {
        [super setValue:value forKey:key];
    }
}
@end