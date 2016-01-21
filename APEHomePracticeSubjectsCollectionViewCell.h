//
//  APEHomePracticeSubjectsCollectionViewCell.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APEHomePracticeSubjectsCollectionCellViewModel.h"

@interface APEHomePracticeSubjectsCollectionViewCell : UICollectionViewCell

- (void)bindDataWithViewModel:(nonnull APEHomePracticeSubjectsCollectionCellViewModel *)viewModel;
@end
