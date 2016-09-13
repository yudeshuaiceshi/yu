//
//  ViewController.m
//  collection
//
//  Created by Arthur.yu on 16/5/26.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//
//屏幕的宽高
#define SCREEN_H ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_W ([[UIScreen mainScreen] bounds].size.width)
#import "ViewController.h"
#import "WordsDetailsViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WordsDetailsViewController *vv=[[WordsDetailsViewController alloc]init];
    [self.navigationController pushViewController:vv animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
