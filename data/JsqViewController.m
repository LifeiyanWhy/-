//
//  JsqViewController.m
//  data
//
//  Created by 李飞艳 on 2017/9/29.
//  Copyright © 2017年 李飞艳. All rights reserved.
//
#import "Bds.h"
#import "JsqViewController.h"
#import "newView.h"
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height
@interface JsqViewController ()
@property(nonatomic,strong) NSArray *array;
@property(nonatomic,strong) newView *jp;
@end

@implementation JsqViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    _jp = [[newView alloc] initWithFrame:CGRectMake(0, 0, W, H)];
    [self.view addSubview:_jp];
    _array = [NSArray arrayWithObjects:_jp.btn4,_jp.btn5,_jp.btn6,_jp.btn7,_jp.btn8,_jp.btn9, _jp.btn10,_jp.btn11,_jp.btn12,_jp.btn13,_jp.btn14,_jp.btn15,_jp.btn16,_jp.btn17,_jp.btn18,nil];
    for(int i = 0;i < 15;i++){
        [_array[i] addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
    }
    [_jp.btn1 addTarget:self action:@selector(qingkong) forControlEvents:UIControlEventTouchUpInside];
    [_jp.btn3 addTarget:self action:@selector(delete) forControlEvents:UIControlEventTouchUpInside];
    [_jp.btn19 addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    
    [_jp.backbtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
}
- (void)touch:(UIButton *)btn{
     _jp.inputTf.text = [_jp.inputTf.text stringByAppendingString:btn.titleLabel.text];
}
- (void)qingkong{
    _jp.inputTf.text = @"";
}
- (void)delete{
    if (![_jp.inputTf.text isEqualToString:@""]) {
        _jp.inputTf.text = [_jp.inputTf.text substringToIndex:[_jp.inputTf.text length] - 1];
    }
}
- (void)add{
    Bds *v = [[Bds alloc] init];
    //传入表达式
    _jp.inputTf.text = [NSString stringWithFormat:@"%f",[v string:_jp.inputTf.text]];
}

- (void)back{
    [self dismissModalViewControllerAnimated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
