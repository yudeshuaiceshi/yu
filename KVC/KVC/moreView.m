//
//  moreView.m
//  KVC
//
//  Created by Arthur.yu on 16/8/8.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "moreView.h"

@implementation moreView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//当属性的值发生变化时，自动调用此方法
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{    
    //    [self.tableView reloadData];
    
    
}

@end
