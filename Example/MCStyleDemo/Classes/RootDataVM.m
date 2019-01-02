//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "RootDataVM.h"

#import "SampleStyleDto.h"
#import "MCColor.h"
#import "MCFont.h"
#import "MCStyle.h"

@implementation RootDataVM

- (void)refresh {
    [self.dataList removeAllObjects];

    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"I";
        dto.color = [MCColor colorI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"II";
        dto.color = [MCColor colorII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"III";
        dto.color = [MCColor colorIII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"IV";
        dto.color = [MCColor colorIV];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"V";
        dto.color = [MCColor colorV];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"VI";
        dto.color = [MCColor colorVI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"VII";
        dto.color = [MCColor colorVII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"VIII";
        dto.color = [MCColor colorVIII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"IX";
        dto.color = [MCColor colorIX];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"X";
        dto.color = [MCColor colorX];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"XI";
        dto.color = [MCColor colorXI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"XII";
        dto.color = [MCColor colorXII];
        [self.dataList addObject:dto];
    }


    //font
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontI";
        dto.font = [MCFont fontI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontII";
        dto.font = [MCFont fontII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontIII";
        dto.font = [MCFont fontIII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontIV";
        dto.font = [MCFont fontIV];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontV";
        dto.font = [MCFont fontV];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontVI";
        dto.font = [MCFont fontVI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontVII";
        dto.font = [MCFont fontVII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontVIII";
        dto.font = [MCFont fontVIII];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontIX";
        dto.font = [MCFont fontIX];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontX";
        dto.font = [MCFont fontX];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontXI";
        dto.font = [MCFont fontXI];
        [self.dataList addObject:dto];
    }
    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"fontXII";
        dto.font = [MCFont fontXII];
        [self.dataList addObject:dto];
    }

    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"styleI-content";
        dto.font = [MCFont fontI];
        dto.edgeInsets = [MCStyle contentInsetI];
        [self.dataList addObject:dto];
    }

    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"styleII-content";
        dto.font = [MCFont fontI];
        dto.edgeInsets = [MCStyle contentInsetII];
        [self.dataList addObject:dto];
    }

    {
        SampleStyleDto *dto = [SampleStyleDto new];
        dto.name = @"styleIII-content";
        dto.font = [MCFont fontI];
        dto.edgeInsets = [MCStyle contentInsetIII];
        [self.dataList addObject:dto];
    }
}

- (NSMutableArray<SampleStyleDto *> *)dataList {
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
@end