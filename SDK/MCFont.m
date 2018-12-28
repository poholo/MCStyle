//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCFont.h"

#import "MCStyleManager.h"
#import "MCFontConfig.h"


@implementation MCFont

+ (UIFont *)fontI {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontI;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:16];
}

+ (UIFont *)fontII {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontII;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:16];
}

+ (UIFont *)fontIII {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontIII;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:14];
}

+ (UIFont *)fontIV {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontIV;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:14];
}

+ (UIFont *)fontV {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontV;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:12];
}

+ (UIFont *)fontVI {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontVI;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:12];
}

+ (UIFont *)fontVII {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontVII;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:10];
}

+ (UIFont *)fontVIII {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontVIII;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:10];
}

+ (UIFont *)fontIX {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontIX;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:8];
}

+ (UIFont *)fontX {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontX;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:8];
}

+ (UIFont *)fontXI {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontXI;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont systemFontOfSize:6];
}

+ (UIFont *)fontXII {
    NSNumber *custom = [MCStyleManager share].fontConfig.fontXII;
    if (custom) {
        return [UIFont systemFontOfSize:custom.integerValue];
    }
    return [UIFont boldSystemFontOfSize:6];
}


@end