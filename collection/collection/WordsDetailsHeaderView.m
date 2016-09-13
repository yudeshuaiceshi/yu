//
//  WordsDetailsHeaderView.m
//  noteBook
//
//  Created by Arthur.yu on 16/5/25.
//  Copyright © 2016年 Diana. All rights reserved.
//

#import "WordsDetailsHeaderView.h"
@interface WordsDetailsHeaderView()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *bookName;

@property (weak, nonatomic) IBOutlet UILabel *zuozhe;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIButton *shuJiaButton;
@property (weak, nonatomic) IBOutlet UIButton *muLuButton;
@property (weak, nonatomic) IBOutlet UIButton *yueDuButton;
@property (weak, nonatomic) IBOutlet UILabel *jianJie;

@end

@implementation WordsDetailsHeaderView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    _shuJiaButton.layer.cornerRadius=4;
    _muLuButton.layer.cornerRadius =4;
    _yueDuButton.layer.cornerRadius =4;
    _shuJiaButton.layer.borderWidth=1;
    _muLuButton.layer.borderWidth =1;
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 255, 255, 255, 1 });
    [_shuJiaButton.layer setBorderColor:colorref];
    [_muLuButton.layer setBorderColor:colorref];

}

-(void)setDataSource:(NSDictionary *)dataSource{
    _imageView.image =[UIImage imageNamed:@"blackBack"];
    _bookName.text =[NSString stringWithFormat:@"作作作作作作"];
    _zuozhe.text =[NSString stringWithFormat:@"作者：%@",@""];
    _typeLabel.text =[NSString stringWithFormat:@"作者：%@",@""];
    _statusLabel.text =[NSString stringWithFormat:@"作者：%@",@""];
    _jianJie.text =[NSString stringWithFormat:@"2016-05-25 22:50:41.567 noteBook[14579:1093921] 42016-05-25 22:50:41.567 noteBook[14579:1093921] 422016-05-25 22:50:41.562016-05-25 22:50:41.562016-05-25 22:50:41.562016-05-25 22:50:41.562016-05-25 22:50:41.562016-05-25 22:50:41.56016-05-25 22:50:41.567 noteBook[14579:1093921] 42016-05-25 22:50:41.567 noteBook[14579:1093921] 4%@",@""];
}

- (IBAction)addBooks:(UIButton *)sender {
    sender.tag =1000;
    [self.delegate clickButton:sender];
}
- (IBAction)lockBooks:(UIButton *)sender {
    sender.tag =1001;
    [self.delegate clickButton:sender];
}
- (IBAction)liJIYueDu:(UIButton *)sender {
    sender.tag =1002;
    [self.delegate clickButton:sender];
}

@end
