//
// Created by majiancheng on 2018/12/28.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "SampleCell.h"
#import "SampleStyleDto.h"


@implementation SampleCell

- (void)loadData:(SampleStyleDto *)dto {
    if (UIEdgeInsetsEqualToEdgeInsets(dto.edgeInsets, UIEdgeInsetsZero)) {
        self.textLabel.text = dto.name;
    } else {
        self.textLabel.text = [NSString stringWithFormat:@"%@ - %@", dto.name, NSStringFromUIEdgeInsets(dto.edgeInsets)];
    }
    self.textLabel.font = dto.font;
    self.textLabel.textColor = dto.color;
}

@end