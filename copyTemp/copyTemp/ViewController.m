//
//  ViewController.m
//  copyTemp
//
//  Created by Arthur.yu on 16/4/11.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+gg.h"


@implementation ggggg
- (void)woshifangfa{
    NSLog(@"%@",self.arr);
}
@end
@interface ViewController ()

@end




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    NSArray *array1 = [NSArray arrayWithObjects:@"a",@"b",@"c",nil];
    　　NSArray *arrayCopy1 = [array1 copy];
    NSString *mm =[array1 mutableCopy];
    NSArray *arr ;
    
    ggggg *g =[[ggggg alloc]init];
    g.arr=[NSArray arrayWithArray:array1];
    NSLog(@"%@",g.arr);
    [g woshifangfa];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
