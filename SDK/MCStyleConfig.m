//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCStyleConfig.h"

#import <UIKit/UIKit.h>


@implementation MCStyleConfig

- (void)setValue:(nullable id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"contentInsetI"]) {
        self.contentInsetI = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsFromString(value)];
    } else if ([key isEqualToString:@"contentInsetII"]) {
        self.contentInsetII = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsFromString(value)];
    } else if ([key isEqualToString:@"contentInsetIII"]) {
        self.contentInsetIII = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsFromString(value)];
    } else {
        [super setValue:value forKey:key];
    }
}

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