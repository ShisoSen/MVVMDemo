//
//  APESubjectDataController.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^APEDataCallback)(NSError *error, id data);

@interface APESubjectDataController : NSObject
@property (nonatomic, copy, readonly) NSArray *openSubjectsWithCurrentPhase;

- (void)requestAllSubjectsWithCallback:(APEDataCallback)callback;
- (void)requestUserSubjectsWithCallback:(APEDataCallback)callback;
@end
