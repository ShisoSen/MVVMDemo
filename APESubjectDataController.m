//
//  APESubjectDataController.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APESubjectDataController.h"
#import "APESubject.h"

@interface APESubjectDataController()
@property (nonatomic, copy, readwrite) NSArray *openSubjectsWithCurrentPhase;
@end

@implementation APESubjectDataController

- (void)requestAllSubjectsWithCallback:(APEDataCallback)callback{
    self.openSubjectsWithCurrentPhase = @[[[APESubject alloc] initWithTitle:@"history" withColor:[UIColor redColor]],
                                          [[APESubject alloc] initWithTitle:@"math" withColor:[UIColor blueColor]],
                                          [[APESubject alloc] initWithTitle:@"history" withColor:[UIColor redColor]],
                                          [[APESubject alloc] initWithTitle:@"math" withColor:[UIColor blueColor]],
                                          [[APESubject alloc] initWithTitle:@"history" withColor:[UIColor redColor]],
                                          [[APESubject alloc] initWithTitle:@"math" withColor:[UIColor blueColor]]];
    callback(nil,self.openSubjectsWithCurrentPhase);
}

- (void)requestUserSubjectsWithCallback:(APEDataCallback)callback{
    
}
@end
