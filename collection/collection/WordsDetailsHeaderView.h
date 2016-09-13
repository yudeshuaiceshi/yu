//
//  WordsDetailsHeaderView.h
//  noteBook
//
//  Created by Arthur.yu on 16/5/25.
//  Copyright © 2016年 Diana. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol WordsDetailsHeaderViewDelegate <NSObject>

- (void)clickButton:(UIButton *)sender;
@end
@interface WordsDetailsHeaderView : UIView
@property(nonatomic,retain)NSDictionary *dataSource;
@property (nonatomic,assign)id <WordsDetailsHeaderViewDelegate>delegate;
@end
