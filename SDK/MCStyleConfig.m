//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCStyleConfig.h"


@implementation MCStyleConfig

- (void)setValue:(nullable id)value forUndefinedKey:(NSString *)key {
    self.customImageDict[key] = value;
}

- (NSMutableDictionary<NSString *, NSString *> *)customImageDict {
    if (!_customImageDict) {
        _customImageDict = [NSMutableDictionary new];
    }
    return _customImageDict;
}
@end