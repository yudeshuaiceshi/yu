//
//  ViewController.m
//  ffff
//
//  Created by Arthur.yu on 16/4/12.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *centenerView;

@property (nonatomic, strong) NSString *string1;

@property (nonatomic, weak) NSString *string2;
@property (nonatomic, strong)NSString *str1;
@property (nonatomic, weak)NSString *str2;
@property (nonatomic, retain)NSString *str3;
@property (nonatomic, copy)NSString *str4;

@property (retain, nonatomic) NSString *retainStr;

@property (copy, nonatomic) NSString *str_cp;



@property (retain, nonatomic) NSMutableString *retainMStr;

@property (copy, nonatomic)   NSMutableString *str_Mcp;
@end

@implementation ViewController
@synthesize str1;

@synthesize str2;
//@synthesize string1;
//
//@synthesize string2;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *ddddd =[[UIView alloc]initWithFrame:CGRectMake(110, 234, 100, 100)];
    [self.view addSubview:ddddd];
    
    self.string1 = @"String 1";
    
    self.string2 = self.string1;
    
    self.string1 = nil;
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)(self.string1)));
NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)self.string2));
    NSLog(@"String 2 = %@", self.string2);
    
    
    ddddd.backgroundColor =[UIColor yellowColor];
    NSLog(@"1---%@",NSStringFromCGRect( ddddd.frame));
    NSLog(@"2---%@",NSStringFromCGRect( ddddd.bounds));
    
    int X=ddddd.frame.origin.x;
    int Y=ddddd.frame.origin.y;
    ddddd.frame =CGRectMake(X, Y, 50, 50);
    NSLog(@"3---%@",NSStringFromCGRect( ddddd.frame));
    NSLog(@"4---%@",NSStringFromCGRect( ddddd.bounds));
    
    ddddd.bounds =CGRectMake(0, 0, 20, 20);
    NSLog(@"5---%@",NSStringFromCGRect( ddddd.frame));
    NSLog(@"6---%@",NSStringFromCGRect( ddddd.bounds));
    
    
    NSString *ffff =@"ggg";
    
//    self.str2=@"";
    
    self.str1 =@"d";
//    _str2 =ffff;
//    _str3 =ffff;
//    _str4 =ffff;
    
    ffff =nil;
    
    NSLog(@"%@",self.str1);
    NSLog(@"%@",self.str2);
    NSLog(@"%@",self.str3);
    NSLog(@"%@",self.str4);
    
    
    self.str2=self.str1;
    
    self.str1=nil;
    NSLog(@"%@",self.str2);
    
    
    NSMutableString *mStr = [NSMutableString string];
    
    [mStr setString:@"我没变"];
    
    
    
    self.retainStr   = mStr;
    
    self.str_cp     = mStr;
    
    self.retainMStr = mStr;
    
    self.str_Mcp   = mStr;
    
    
    
    NSLog(@"retainStr:%@",  self.retainStr);
    
    NSLog(@"str_cp:%@",    self.str_cp);
    
    NSLog(@"retainMStr:%@", self.retainMStr);
    
    NSLog(@"str_Mcp:%@",   self.str_Mcp);
    
    NSLog(@"\n");
    
    
    
    [mStr setString:@"我变了"];
    
    
    
    NSLog(@"retainStr:%@",  self.retainStr);
    
    NSLog(@"str_cp:%@",    self.str_cp);
    
    NSLog(@"retainMStr:%@", self.retainMStr);
    
    NSLog(@"str_Mcp:%@",   self.str_Mcp);
    
    NSLog(@"\n");
    
    
    
    NSString *str = @"我来了";//[[NSString alloc] initWithFormat:@"我来了"];//两种方式都一样。
    
    self.retainStr  = str;
    
    self.str_cp    = str;
    
    self.retainMStr = [str mutableCopy];
    
    self.str_Mcp   = [str mutableCopy];
    
    
    
    NSLog(@"retainStr:%@",  self.retainStr);
    
    NSLog(@"str_cp:%@",    self.str_cp);
    
    NSLog(@"retainMStr:%@", self.retainMStr);
    
    NSLog(@"str_Mcp:%@",   self.str_Mcp);
    
    NSLog(@"\n");
    
    
    
    str =@"我走了";//[[NSStringalloc] initWithFormat:@"我走了"];//两种方式都一样
    
    
    
    NSLog(@"retainStr:%@",  self.retainStr);
    
    NSLog(@"str_cp:%@",    self.str_cp);
    
    NSLog(@"retainMStr:%@", self.retainMStr);
    
    NSLog(@"str_Mcp:%@",   self.str_Mcp);
    
    NSLog(@"\n");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
