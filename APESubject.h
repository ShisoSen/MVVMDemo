//
//  APESubject.h
//  MVVMDemo
//
//  Created by Sicong Qian on 16/1/21.
//  Copyright © 2016年 silverup.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface APESubject : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIColor *color;

- (instancetype)initWithTitle:(NSString*)title withColor:(UIColor*)color;
@end
