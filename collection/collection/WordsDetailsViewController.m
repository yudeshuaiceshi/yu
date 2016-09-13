//
//  WordsDetailsViewController.m
//  collection
//
//  Created by Arthur.yu on 16/5/26.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//
//屏幕的宽高
#define SCREEN_H ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_W ([[UIScreen mainScreen] bounds].size.width)
#import "WordsDetailsViewController.h"
#import "WordsDetailsCollectionViewCell.h"
#import "WordsDetailsHeaderView.h"
@interface WordsDetailsViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,WordsDetailsHeaderViewDelegate>
{
    WordsDetailsHeaderView *vc;
}
@property(nonatomic,weak)IBOutlet UICollectionView *collectionView;
@end

@implementation WordsDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [_collectionView registerNib:[UINib nibWithNibName:@"WordsDetailsCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"wordsDetailsCell"];
    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    [self initHeader];
}
- (void)initHeader{
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"WordsDetailsHeaderView" owner:nil options:nil];
    vc =[nibContents lastObject];
    vc.delegate =self;
    vc.dataSource =nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- UICollectionViewDataSource
//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}
//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
//header 大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    return CGSizeMake(SCREEN_W, 430);
    
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath

{
    
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader){
        UICollectionReusableView* header = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                                                                   withReuseIdentifier:@"header"
                                                                                          forIndexPath:indexPath];

        [header addSubview:vc];
        return header;
        
    }
    
    return reusableview;
}
//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WordsDetailsCollectionViewCell *cell = (WordsDetailsCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"wordsDetailsCell" forIndexPath:indexPath];
    
    cell.imageView.image =[UIImage imageNamed:@"123"];
    cell.nameLabel.text =@"123";
    
    return cell;
}
#pragma mark --UICollectionViewDelegateFlowLayout
//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(68, 110);
}
//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 8, 0, 8);
}
#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)clickButton:(UIButton *)sender{
    
}

@end
