//
//  APEHomePracticeSubjectsView.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeSubjectsView.h"
#import "APEHomePracticeSubjectsCollectionCellViewModel.h"
#import "APEHomePracticeSubjectsCollectionViewCell.h"

static NSString *kCollectionViewCellIdentifier = @"cell";
@interface APEHomePracticeSubjectsView()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation APEHomePracticeSubjectsView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self _setUp];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self _setUp];
    }
    return self;
}

- (void)_setUp{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 20.0f;
    flowLayout.minimumInteritemSpacing = 10.0f;
    flowLayout.itemSize = CGSizeMake(80.0f, 120.0f);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.sectionInset = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:flowLayout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[APEHomePracticeSubjectsCollectionViewCell class]
            forCellWithReuseIdentifier:kCollectionViewCellIdentifier];
    [self addSubview:self.collectionView];
}

- (void)bindDataWithViewModel:(nonnull APEHomePracticeSubjectsViewModel *)viewModel {
    self.viewModel = viewModel;
    self.collectionView.backgroundColor = viewModel.backgroundColor;
    [self.collectionView reloadData];
//    [self setNeedsUpdateConstraints];
}

#pragma mark - UICollectionViewDataSource, UICollectionViewDelegate
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    APEHomePracticeSubjectsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellIdentifier forIndexPath:indexPath];
    if (0 <= indexPath.row && indexPath.row < self.viewModel.cellViewModels.count) {
        APEHomePracticeSubjectsCollectionCellViewModel *vm = self.viewModel.cellViewModels[indexPath.row];
        [cell bindDataWithViewModel:vm];
    }
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.viewModel.cellViewModels.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
@end
