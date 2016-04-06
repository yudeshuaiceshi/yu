//
//  danliLei.h
//  danli
//
//  Created by Arthur.yu on 16/4/6.
//  Copyright © 2016年 Arthur.yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface danliLei : NSObject

+ (danliLei *)sharedManager;

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *fireBaseToken;

@property (nonatomic, copy) NSString *stString;

@property (nonatomic, copy) NSString *rongToken;

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *password;

@property (nonatomic, copy) NSString *groupId;

@property (nonatomic, copy) NSString *myWallet;
@property (nonatomic, copy) NSString *vitualCurrency;

@property (nonatomic, copy) NSString *giftCardValue;
//memberInfo
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *memberName;
@property (nonatomic, copy) NSString *memberType;
@property (nonatomic, copy) NSString *phoneNo;
@property (nonatomic, copy) NSString *qrCode;
@property (nonatomic, copy) NSString *signature;

//personalInfo
@property (nonatomic, copy) NSString *dob;
@property (nonatomic, copy) NSString *gender;
@property (nonatomic, copy) NSString *height;
@property (nonatomic, copy) NSString *weight;
@end
