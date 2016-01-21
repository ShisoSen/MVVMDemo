//
//  APEHomePracticeSubjectsViewModel.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeSubjectsViewModel.h"
#import "APESubject.h"
#import "APEHomePracticeSubjectsCollectionCellViewModel.h"

@implementation APEHomePracticeSubjectsViewModel
+ (nonnull APEHomePracticeSubjectsViewModel *)viewModelWithSubjects:(nonnull NSArray *)subjects{
    APEHomePracticeSubjectsViewModel *viewModel = [APEHomePracticeSubjectsViewModel new];
    viewModel.backgroundColor = [UIColor grayColor];
    NSMutableArray *tempVM = [NSMutableArray array];
    for (APESubject *subject in subjects) {
        APEHomePracticeSubjectsCollectionCellViewModel *cellVM = [APEHomePracticeSubjectsCollectionCellViewModel viewModelWithSubject:subject];
        [tempVM addObject:cellVM];
    }
    viewModel.cellViewModels = tempVM?:@[];
    return viewModel;
}

@end
