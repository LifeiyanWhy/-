//
//  newView.m
//  data
//
//  Created by 李飞艳 on 2017/10/9.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "newView.h"
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height

@implementation newView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addUI];
    }
    return self;
}
-(void)addUI{
    _inputTf = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, W, H*0.4)];
    [self addSubview:_inputTf];
    _inputTf.backgroundColor = [UIColor lightGrayColor];
    _inputTf.font = [UIFont systemFontOfSize:50];
    //文字自动适应窗口大小
    _inputTf.adjustsFontSizeToFitWidth = YES;
    _inputTf.minimumFontSize = 20;
    
//    _array = [NSArray arrayWithObjects:_btn1,_btn2,_btn3,_btn4,nil];
    _btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, H*0.4, W*0.25-1, H*0.6*0.2-1)];
    _btn1.backgroundColor = [UIColor whiteColor];
    [_btn1 setTitle:@"C" forState:UIControlStateNormal];
    [_btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn1.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn1];
    
    _btn2 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25, H*0.4, W*0.25-1, H*0.6*0.2-1)];
    _btn2.backgroundColor = [UIColor whiteColor];
    [_btn2 setTitle:@"+/-" forState:UIControlStateNormal];
    [_btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn2.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn2];
    
    _btn3 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*2, H*0.4, W*0.25-1, H*0.6*0.2-1)];
    _btn3.backgroundColor = [UIColor whiteColor];
    [_btn3 setTitle:@"<-" forState:UIControlStateNormal];
    [_btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn3.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn3];
    
    _btn4 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*3, H*0.4, W*0.25, H*0.6*0.2-1)];
    [_btn4 setTitle:@"/" forState:UIControlStateNormal];
    [_btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn4.titleLabel.font = [UIFont systemFontOfSize:35];
    _btn4.backgroundColor = [UIColor yellowColor];
    [self addSubview:_btn4];
  
    _btn5 = [[UIButton alloc] initWithFrame:CGRectMake(0, H*0.4+H*0.6*0.2, W*0.25-1, H*0.6*0.2-1)];
    _btn5.backgroundColor = [UIColor whiteColor];
    [_btn5 setTitle:@"7" forState:UIControlStateNormal];
    [_btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn5.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn5];
    
    _btn6 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25, H*0.4+H*0.6*0.2, W*0.25-1, H*0.6*0.2-1)];
    _btn6.backgroundColor = [UIColor whiteColor];
    [_btn6 setTitle:@"8" forState:UIControlStateNormal];
    [_btn6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn6.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn6];
    
    _btn7 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*2, H*0.4+H*0.6*0.2, W*0.25-1, H*0.6*0.2-1)];
    _btn7.backgroundColor = [UIColor whiteColor];
    [_btn7 setTitle:@"9" forState:UIControlStateNormal];
    [_btn7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn7.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn7];
    
    _btn8 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*3, H*0.4+H*0.6*0.2, W*0.25, H*0.6*0.2-1)];
    [_btn8 setTitle:@"*" forState:UIControlStateNormal];
    [_btn8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn8.titleLabel.font = [UIFont systemFontOfSize:35];
    _btn8.backgroundColor = [UIColor yellowColor];
    [self addSubview:_btn8];
    
    _btn9 = [[UIButton alloc] initWithFrame:CGRectMake(0, H*0.4+H*0.6*0.2*2, W*0.25-1, H*0.6*0.2-1)];
    _btn9.backgroundColor = [UIColor whiteColor];
    [_btn9 setTitle:@"4" forState:UIControlStateNormal];
    [_btn9 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn9.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn9];
    
    _btn10 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25, H*0.4+H*0.6*0.2*2, W*0.25-1, H*0.6*0.2-1)];
    _btn10.backgroundColor = [UIColor whiteColor];
    [_btn10 setTitle:@"5" forState:UIControlStateNormal];
    [_btn10 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn10.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn10];
    
    _btn11 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*2, H*0.4+H*0.6*0.2*2, W*0.25-1, H*0.6*0.2-1)];
    _btn11.backgroundColor = [UIColor whiteColor];
    [_btn11 setTitle:@"6" forState:UIControlStateNormal];
    [_btn11 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn11.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn11];
    
    _btn12 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*3, H*0.4+H*0.6*0.2*2, W*0.25, H*0.6*0.2-1)];
    [_btn12 setTitle:@"-" forState:UIControlStateNormal];
    [_btn12 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn12.titleLabel.font = [UIFont systemFontOfSize:35];
    _btn12.backgroundColor = [UIColor yellowColor];
    [self addSubview:_btn12];
    
    _btn13 = [[UIButton alloc] initWithFrame:CGRectMake(0, H*0.4+H*0.6*0.2*3, W*0.25-1, H*0.6*0.2-1)];
    _btn13.backgroundColor = [UIColor whiteColor];
    [_btn13 setTitle:@"1" forState:UIControlStateNormal];
    [_btn13 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn13.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn13];
    
    _btn14 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25, H*0.4+H*0.6*0.2*3, W*0.25-1, H*0.6*0.2-1)];
    _btn14.backgroundColor = [UIColor whiteColor];
    [_btn14 setTitle:@"2" forState:UIControlStateNormal];
    [_btn14 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn14.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn14];
    
    _btn15 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*2, H*0.4+H*0.6*0.2*3, W*0.25-1, H*0.6*0.2-1)];
    _btn15.backgroundColor = [UIColor whiteColor];
    [_btn15 setTitle:@"3" forState:UIControlStateNormal];
    [_btn15 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn15.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn15];
    
    _btn16 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*3, H*0.4+H*0.6*0.2*3, W*0.25, H*0.6*0.2-1)];
    [_btn16 setTitle:@"+" forState:UIControlStateNormal];
    [_btn16 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn16.titleLabel.font = [UIFont systemFontOfSize:35];
    _btn16.backgroundColor = [UIColor yellowColor];
    [self addSubview:_btn16];
    
    _btn17 = [[UIButton alloc] initWithFrame:CGRectMake(0, H*0.4+H*0.6*0.2*4, W*0.25*2-1, H*0.6*0.2)];
    _btn17.backgroundColor = [UIColor whiteColor];
    [_btn17 setTitle:@"0" forState:UIControlStateNormal];
    [_btn17 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn17.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn17];
    
    _btn18 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*2, H*0.4+H*0.6*0.2*4, W*0.25-1, H*0.6*0.2)];
    _btn18.backgroundColor = [UIColor whiteColor];
    [_btn18 setTitle:@"." forState:UIControlStateNormal];
    [_btn18 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn18.titleLabel.font = [UIFont systemFontOfSize:35];
    [self addSubview:_btn18];
    
    _btn19 = [[UIButton alloc] initWithFrame:CGRectMake(W*0.25*3, H*0.4+H*0.6*0.2*4, W*0.25, H*0.6*0.2)];
    [_btn19 setTitle:@"=" forState:UIControlStateNormal];
    [_btn19 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btn19.titleLabel.font = [UIFont systemFontOfSize:35];
    _btn19.backgroundColor = [UIColor yellowColor];
    [self addSubview:_btn19];

    _backbtn = [[UIButton alloc] initWithFrame:CGRectMake(W/30,H/60,50, 30)];
    [self addSubview:_backbtn];
    [_backbtn setTitle:@"<返回" forState:UIControlStateNormal];
    _backbtn.backgroundColor = [UIColor lightGrayColor];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
