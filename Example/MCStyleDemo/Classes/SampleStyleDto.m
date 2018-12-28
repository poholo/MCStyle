//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "SampleStyleDto.h"


@implementation SampleStyleDto

- (NSString *)name {
    if (!_name) {
        return @"Sample";
    }
    return _name;
}

- (UIColor *)color {
    if (!_color) {
        return [UIColor blackColor];
    }
    return _color;
}

- (UIFont *)font {
    if (!_font) {
        return [UIFont systemFontOfSize:12];
    }
    return _font;
}

@end