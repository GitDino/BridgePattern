//
//  XMmachine.m
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "XMmachine.h"

@implementation XMmachine

- (void)loadCommand:(NSString *)command
{
    if ([command isEqualToString:@"上"])
    {
        NSLog(@"您按的是XM:----%@",command);
    }
    else if ([command isEqualToString:@"下"])
    {
        NSLog(@"您按的是XM:----%@",command);
    }
    else if ([command isEqualToString:@"左"])
    {
        NSLog(@"您按的是XM:----%@",command);
    }
    else if ([command isEqualToString:@"右"])
    {
        NSLog(@"您按的是XM:----%@",command);
    }
    else
    {
        NSLog(@"超出范围");
    }
}

@end
