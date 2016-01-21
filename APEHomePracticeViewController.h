//
//  APEHomePracticeViewController.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APEHomePracticeSubjectsView.h"
#import "APEHomePracticeDataController.h"

@interface APEHomePracticeViewController : UIViewController
@property (nonatomic, strong, nullable) APEHomePracticeSubjectsView *subjectsView;

@property (nonatomic, strong, nullable) APEHomePracticeDataController *dataController;

@end
