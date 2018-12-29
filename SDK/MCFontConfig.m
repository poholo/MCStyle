//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCFontConfig.h"


@implementation MCFontConfig

- (void)setValue:(nullable id)value forUndefinedKey:(NSString *)key {
    self.customDict[key] = value;
}

- (NSMutableDictionary<NSString *, NSNumber *> *)customDict {
    if (!_customDict) {
        _customDict = [NSMutableDictionary new];
    }
    return _customDict;
}
@end