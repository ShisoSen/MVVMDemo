//
//  APEHomePracticeDataController.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APEHomePracticeDataController.h"
#import "APESubjectDataController.h"

@interface APEHomePracticeDataController ()

@property (nonatomic, strong, nonnull) APESubjectDataController *subjectDataController;

@end
@implementation APEHomePracticeDataController

- (instancetype)init{
    self = [super init];
    if (self) {
        self.subjectDataController = [APESubjectDataController new];
    }
    return self;
}

- (void)requestSubjectDataWithCallback:(nonnull APECompletionCallback)callback{
    // why id data?
    APEDataCallback dataCallback = ^(NSError *error, id data) {
        callback(error);
    };
    [self.subjectDataController requestAllSubjectsWithCallback:dataCallback];
//    [self.subjectDataController requestUserSubjectsWithCallback:dataCallback];
}

- (nonnull NSArray *)openSubjects {
    return self.subjectDataController.openSubjectsWithCurrentPhase ?: @[];
}
@end
