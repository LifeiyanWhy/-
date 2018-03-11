//
//  ViewController.m
//  data
//
//  Created by 李飞艳 on 2017/9/29.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "Bds.h"
#import "ViewController.h"
#import "JsqViewController.h"
#import "SecondViewController.h"
#import "ChangeViewController.h"
#import "Masonry.h"
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
@property(nonatomic,strong) UIButton *jsq;
@property(nonatomic,strong) UIButton *second;
@property(nonatomic,strong) UIButton *change;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _jsq = [[UIButton alloc] initWithFrame:CGRectMake(W/3, H/4,W/3,H/15)];
    [self.view addSubview:_jsq];
    _jsq.backgroundColor = [UIColor lightGrayColor];
    [_jsq setTitle:@"计算器" forState:UIControlStateNormal];
    [_jsq setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_jsq addTarget:self action:@selector(tobegin) forControlEvents:UIControlEventTouchUpInside];
    
    _second = [[UIButton alloc] initWithFrame:CGRectMake(W/3,H/4+H/15+10, W/3, H/15)];
    [self.view addSubview:_second];
    _second.backgroundColor = [UIColor lightGrayColor];
    [_second setTitle:@"中缀转后缀" forState:UIControlStateNormal];
    [_second setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_second addTarget:self action:@selector(tobegin2) forControlEvents:UIControlEventTouchUpInside];
}
-(void)tobegin{
    JsqViewController *jsqview = [[JsqViewController alloc] init];
    [self presentViewController:jsqview animated:NO completion:nil];
}
-(void)tobegin2{
    SecondViewController *second = [[SecondViewController alloc] init];
    [self presentViewController:second animated:NO completion: nil];
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
