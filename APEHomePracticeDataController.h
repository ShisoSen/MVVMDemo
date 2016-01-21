//
//  APEHomePracticeDataController.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/20.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

//^(NSError *error, id data) {
//    callback(error);
//};

#import <Foundation/Foundation.h>
typedef void(^APECompletionCallback)( NSError * _Nonnull error);

@interface APEHomePracticeDataController : NSObject
@property (nonatomic, copy, readonly) NSArray *openSubjects;

- (void)requestSubjectDataWithCallback:(nonnull APECompletionCallback)callback;
@end
