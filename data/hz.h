//
//  hz.h
//  data
//
//  Created by 李飞艳 on 2017/9/27.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import <Foundation/Foundation.h>
#define N 100
typedef struct{
    char data[N];
    int top;
}Stack;
@interface hz : NSObject
- (NSString *)string:(NSString *)str;//str为传入的中缀表达式
@end
