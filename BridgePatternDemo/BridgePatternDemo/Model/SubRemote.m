//
//  SubRemote.m
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "SubRemote.h"

@implementation SubRemote

- (void)up
{
    [self setCommand:@"上"];
}

- (void)down
{
    [self setCommand:@"下"];
}

- (void)left
{
    [self setCommand:@"左"];
}

- (void)right
{
    [self setCommand:@"右"];
}

@end
