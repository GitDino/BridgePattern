//
//  DORootVC.m
//  BridgePatternDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define BtnW (SCREEN_WIDTH - 60) * 0.5

#import "DORootVC.h"

#import "SubRemote.h"
#import "XMmachine.h"
#import "TCLmachine.h"

@interface DORootVC ()

@property (nonatomic, strong) UIButton *action_xm_btn;

@property (nonatomic, strong) UIButton *action_tcl_btn;

/**
 遥控器对象
 */
@property (nonatomic, strong) SubRemote *remote;

@end

@implementation DORootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"桥接模式";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configSubViews];
}

#pragma mark - Custom Cycle
- (void)configSubViews
{
    [self.action_xm_btn addTarget:self action:@selector(clickBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.action_xm_btn];
    
    [self.action_tcl_btn addTarget:self action:@selector(clickBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.action_tcl_btn];
}

#pragma mark - Event Cycle
- (void)clickBtnAction:(UIButton *) action_btn
{
    switch (action_btn.tag) {
        case 1://小米
            self.remote.tv_machine = [[XMmachine alloc] init];
            [self.remote down];
            break;
        case 2://TCL
            self.remote.tv_machine = [[TCLmachine alloc] init];
            [self.remote right];
            break;
            
        default:
            break;
    }
}

#pragma mark - Getter Cycle
- (SubRemote *)remote
{
    if (!_remote)
    {
        _remote = [[SubRemote alloc] init];
    }
    return _remote;
}

- (UIButton *)action_xm_btn
{
    if (!_action_xm_btn)
    {
        _action_xm_btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, BtnW, 44)];
        _action_xm_btn.tag = 1;
        [_action_xm_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_action_xm_btn setTitle:@"小米电视" forState:UIControlStateNormal];
    }
    return _action_xm_btn;
}

- (UIButton *)action_tcl_btn
{
    if (!_action_tcl_btn)
    {
        _action_tcl_btn = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 20 - BtnW, 100, BtnW, 44)];
        _action_tcl_btn.tag = 2;
        [_action_tcl_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_action_tcl_btn setTitle:@"TCL电视" forState:UIControlStateNormal];
    }
    return _action_tcl_btn;
}

@end
