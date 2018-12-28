//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCDto.h"


@implementation MCDto

+ (id)createDto:(NSDictionary *)dict {
    MCDto *dto = [self new];
    [dto setValuesForKeysWithDictionary:dict];
    return dto;
}

@end