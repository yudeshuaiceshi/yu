//
//  ViewController.m
//  KVC
//
//  Created by Arthur.yu on 16/7/18.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UILabel *labelqq;

@end

@implementation ViewController
@synthesize labelqq;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//        [self addObserver:self forKeyPath:@"label" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:NULL];
}

- (void)aaaaaaa{
    self.labelqq =@"dssafsadf";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(UIButton *)sender{
    OneViewController *vc =[[OneViewController alloc]init];
    vc.delegate =self;
    [self.navigationController pushViewController:vc animated:YES];
[self addObserver:vc forKeyPath:@"labelqq" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:NULL];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{

}


@end
