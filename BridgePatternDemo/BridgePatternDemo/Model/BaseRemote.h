//
//  BaseRemote.h
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TVmachine;

@interface BaseRemote : NSObject

@property (nonatomic, strong) TVmachine *tv_machine;

- (void)setCommand:(NSString *) command;

- (void)up;
- (void)down;
- (void)left;
- (void)right;

@end
