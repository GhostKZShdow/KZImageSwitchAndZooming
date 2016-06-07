//
//  ViewController.m
//  KZImageSwitchAndZooming
//
//  Created by 龙邦 on 16/6/7.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import "ViewController.h"
#import "NewView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NewView *newView = [[NewView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:newView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
