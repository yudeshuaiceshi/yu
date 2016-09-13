//
//  OneViewController.h
//  KVC
//
//  Created by Arthur.yu on 16/7/18.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OneViewControllerDelegate <NSObject>
- (void)aaaaaaa;
@end
@interface OneViewController : UIViewController

@property (nonatomic,assign)id<OneViewControllerDelegate>delegate;
@end
