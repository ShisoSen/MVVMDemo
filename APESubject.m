//
//  APESubject.m
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import "APESubject.h"

@implementation APESubject

- (instancetype)initWithTitle:(NSString *)title withColor:(id)color{
    self = [super init];
    if (self) {
        _title = title;
        _color = color;
    }
    return self;
}
@end
