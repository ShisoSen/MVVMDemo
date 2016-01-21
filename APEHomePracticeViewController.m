//
//  APEHomePracticeViewController.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeViewController.h"

@interface APEHomePracticeViewController ()<APEHomePracticeSubjectsViewDelegate>

@end

@implementation APEHomePracticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupContentView];
    [self setupDataController];
    [self fetchSubjectData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupContentView {
    self.subjectsView = [[APEHomePracticeSubjectsView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.subjectsView];
    // Layout Views ...
}

- (void)setupDataController{
    self.dataController = [APEHomePracticeDataController new];
}

- (void)fetchSubjectData {
    [self.dataController requestSubjectDataWithCallback:^(NSError *error) {
        if (error == nil) {
            [self renderSubjectView];
        }
    }];
}
- (void)renderSubjectView {
    APEHomePracticeSubjectsViewModel *viewModel =
    [APEHomePracticeSubjectsViewModel viewModelWithSubjects:self.dataController.openSubjects];
    [self.subjectsView bindDataWithViewModel:viewModel];
}

#pragma mark -APEHomePracticeSubjectsViewDelegate
- (void)homePracticeSubjectsView:(APEHomePracticeSubjectsView *)subjectView didPressItemAtIndex:(NSInteger)index{
    
}
@end
