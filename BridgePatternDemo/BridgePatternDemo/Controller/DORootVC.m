//
//  DORootVC.m
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"

@interface DORootVC ()

@end

@implementation DORootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"桥接模式";
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
