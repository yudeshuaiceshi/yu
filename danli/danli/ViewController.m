//
//  ViewController.m
//  danli
//
//  Created by Arthur.yu on 16/4/6.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"
#import "danliLei.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   NSString *userid= [danliLei sharedManager].userId;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
