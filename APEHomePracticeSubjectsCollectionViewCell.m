//
//  APEHomePracticeSubjectsCollectionViewCell.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeSubjectsCollectionViewCell.h"

@implementation APEHomePracticeSubjectsCollectionViewCell

- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"APEHomePracticeSubjectsCollectionViewCell init");
    }
    return self;
}

- (void)bindDataWithViewModel:(nonnull APEHomePracticeSubjectsCollectionCellViewModel *)viewModel{
    self.backgroundColor = viewModel.backgroundColor;
    UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
    label.text = viewModel.title;
    [self addSubview:label];
}

@end
