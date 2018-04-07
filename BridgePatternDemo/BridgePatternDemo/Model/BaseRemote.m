//
//  BaseRemote.m
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "BaseRemote.h"
#import "TVmachine.h"

@implementation BaseRemote

- (void)setCommand:(NSString *) command
{
    [self.tv_machine loadCommand:command];
}

- (void)up
{}

- (void)down
{}

- (void)left
{}

- (void)right
{}

@end
