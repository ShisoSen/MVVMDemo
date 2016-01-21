//
//  APEHomePracticeSubjectsCollectionCellViewModel.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeSubjectsCollectionCellViewModel.h"

@implementation APEHomePracticeSubjectsCollectionCellViewModel

+ (nonnull APEHomePracticeSubjectsCollectionCellViewModel *)viewModelWithSubject:(nonnull APESubject *)subject{
    APEHomePracticeSubjectsCollectionCellViewModel *cellVM = [APEHomePracticeSubjectsCollectionCellViewModel new];
    cellVM.title = subject.title;
    cellVM.backgroundColor = subject.color;
    return cellVM;
}
@end
