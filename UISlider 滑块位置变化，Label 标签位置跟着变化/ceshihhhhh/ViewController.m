//
//  ViewController.m
//  ceshihhhhh
//
//  Created by Arthur.yu on 16/6/23.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UISlider *_uislider; //新建一个滑动条
    UILabel *_uilabel; //新建一个label用来显示滑动的位置
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testSlider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//滑动条
-(void)testSlider
{
    NSLog(@"begin slider");
    //设置滑动条slider的一些基本属性
    _uislider = [[UISlider alloc]init];
    _uislider.frame = CGRectMake(10, 365, 300, 50); //滑动条的位置，大小
    _uislider.minimumValue = 0; //最小值
    _uislider.maximumValue = 500; //最大值
    _uislider.value = 0; //默认值
    //sliderValueChanged事件
    [_uislider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    //设置label的属性
    _uilabel = [[UILabel alloc]initWithFrame:CGRectMake(_uislider.frame.origin.x, _uislider.frame.origin.y-10, 70, 20)];
    [_uilabel setTextAlignment:UITextAlignmentCenter];
    [_uilabel setBackgroundColor:[UIColor clearColor]];
    //表示一开始为隐藏，不显示label，如果不用下面这句一开始进去是不显示label
    [_uilabel setAlpha:0.f];
    
    //_uilabel.text = @"aaaaaaaa";
    [self.view addSubview:_uislider];
    [self.view addSubview:_uilabel];
}

-(void)sliderValueChanged:(id)sender
{
    
    UIImageView *imageView = [_uislider.subviews objectAtIndex:2];
    CGRect theRect = [self.view convertRect:imageView.frame fromView:imageView.superview];
    [_uilabel setFrame:CGRectMake(theRect.origin.x-22, theRect.origin.y-38, _uilabel.frame.size.width, _uislider.frame.size.height)];
    
    NSLog(@"slider value%f",_uislider.value);
    
    NSInteger v = _uislider.value+0.5;
    //label的显示数字。为滑动条移动后的位置的value
    [_uilabel setText:[NSString stringWithFormat:@"%d",v]];
    
    //动画效果
    [UIView animateWithDuration:0.5
                     animations:^
     {
         
         [_uilabel setAlpha:1.f];
     }
                     completion:^(BOOL finished)
     {
         // 动画结束时的处理
     }];
    
    //[timer invalidate];
   NSTimer* timer = nil;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(stopanimate)
                                           userInfo:nil repeats:NO];
}


-(void)stopanimate
{
    [UIView animateWithDuration:0.5
                     animations:^{
                         [_uilabel setAlpha:0.f];
                     }
                     completion:^(BOOL finished){
                         // 动画结束时的处理
                     }];
}

@end
