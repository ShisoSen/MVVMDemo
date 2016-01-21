//
//  APEHomePracticeSubjectsView.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APEHomePracticeSubjectsViewModel.h"

@class APEHomePracticeSubjectsView;
@protocol APEHomePracticeSubjectsViewDelegate
- (void)homePracticeSubjectsView:(nonnull APEHomePracticeSubjectsView *)subjectView didPressItemAtIndex:(NSInteger)index;

@end

@interface APEHomePracticeSubjectsView : UIView
@property (nonatomic, strong, nullable) APEHomePracticeSubjectsViewModel *viewModel;
@property (nonatomic, weak, nullable) id delegate;
@property (nonatomic, strong, nullable) UICollectionView* collectionView;

- (void)bindDataWithViewModel:(nonnull APEHomePracticeSubjectsViewModel *)viewModel;
@end
