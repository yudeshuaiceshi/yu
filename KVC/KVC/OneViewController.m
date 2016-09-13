//
//  OneViewController.m
//  KVC
//
//  Created by Arthur.yu on 16/7/18.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "OneViewController.h"
#import "moreView.h"
@interface OneViewController ()
{
    moreView *moreV;
    
}
//@property (nonatomic,strong)UILabel *labelaa;
@property (nonatomic,strong)NSString *labelaa;

@end

@implementation OneViewController
//@synthesize labelaa;
//注册监听@implementation RootViewController
- (void)viewDidLoad
{
    moreV =[[moreView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
    moreV.backgroundColor =[UIColor redColor];
    [self.view addSubview:moreV];
    [self addObserver:moreV forKeyPath:@"labelaa" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:NULL];

}

//当属性的值发生变化时，自动调用此方法
/* listen for changes to the earthquake list coming from our app delegate. */
- (void)observeValueForKeyPath:(NSString *)keyPath
ofObject:(id)object
change:(NSDictionary *)change
context:(void *)context
{    
//    [self.tableView reloadData];
    
    
}


- (IBAction)dddd:(UIButton *)sender{
    [self.delegate aaaaaaa];
    self.labelaa =@"dssafsadf";
}

@end
