///Users/yuandian/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/858740223/Image/{55B4ADEE-5FF9-B826-ABF3-EE651BF49391}.png
//  ViewController.m
//  scrollView
//
//  Created by Arthur.yu on 16/5/20.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
{
    NSArray *pics;
}
@property (nonatomic,strong)UIScrollView *imgScrollView;
@end

@implementation ViewController
- (void)reloadImage{
    
    if (pics.count ==0) {
        return;
    }
    CGFloat imgWidth =_imgScrollView.frame.size.width *(pics.count+(pics.count==1?0:2));
    _imgScrollView.contentSize =CGSizeMake(imgWidth, 0);
    for (int i=0; i<=(pics.count ==1?pics.count-1:pics.count+1); i++) {
        UIImageView *imageView =[UIImageView new];
        
        NSString *urlString;
        if (i==0) {
            urlString =pics[pics.count -1];
        }
        else if (i==pics.count+1){
            urlString =pics[0];
        }
        else{
            urlString =pics[i-1];
        }
        imageView.image =[UIImage imageNamed:urlString];

        imageView.frame =CGRectMake(i*320, 0, 320, 200);
        
        [_imgScrollView addSubview:imageView];
        [_imgScrollView setContentOffset:CGPointMake(320, 0)];
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.x==0) {
        [scrollView setContentOffset:CGPointMake(pics.count *320, 0)];
    }
    if (scrollView.contentOffset.x+320 ==scrollView.contentSize.width) {
        [scrollView setContentOffset:CGPointMake(320, 0)];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imgScrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
    self.imgScrollView.backgroundColor =[UIColor redColor];
    self.imgScrollView.pagingEnabled=YES;
    self.imgScrollView.delegate =self;
    [self.view addSubview:self.imgScrollView];
    pics =[NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil];
    
    [self reloadImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
