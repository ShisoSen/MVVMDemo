//
//  APEHomePracticeSubjectsViewModel.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface APEHomePracticeSubjectsViewModel : NSObject

@property (nonatomic, copy, nonnull) NSArray*cellViewModels;

@property (nonatomic, strong, nonnull) UIColor *backgroundColor;

+ (nonnull APEHomePracticeSubjectsViewModel *)viewModelWithSubjects:(nonnull NSArray *)subjects;

@end
