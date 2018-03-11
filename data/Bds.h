//
//  Bds.h
//  data
//
//  Created by 李飞艳 on 2017/9/23.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import <Foundation/Foundation.h>

#define M 100
typedef struct{
    char data[M];
    int top;
}Stackfu;
typedef struct{
    float data[M];
    int top;
}StackNum;
@interface Bds : NSObject
-(float)string:(NSString *)str;//str是表达式
-(NSString *)houz:(NSString *)str;
//-(Stack *)stackInit;
@end
