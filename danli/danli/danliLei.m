//
//  danliLei.m
//  danli
//
//  Created by Arthur.yu on 16/4/6.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import "danliLei.h"

@implementation danliLei
+ (danliLei *)sharedManager
{
    static danliLei *sharedAccountManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAccountManagerInstance = [[self alloc] init];
    });
    return sharedAccountManagerInstance;
}
@end
