//
//  Bds.m
//  data
//
//  Created by 李飞艳 on 2017/9/23.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "Bds.h"

@implementation Bds
int priority[7][7] = {1,1,-1,-1,-1,1,1,1,1,-1,-1,-1,1,1,1,1,1,1,-1,1,1,1,1,1,1,-1,1,1,-1,-1,-1,-1,-1,0,-2,1,1,1,1,-2,1,1,-1,-1,-1,-1,-1,-2,0};    //存储优先级关系
-(float)string:(NSString *)str{
    str = [str stringByAppendingString:@"#"];
    
    //操作符栈
    Stackfu *fu;   //指针s指向栈
    //初始化栈（置空)
    fu = malloc(sizeof(Stackfu));
    fu->top = -1;
    pushfu(fu,'#');
    //操作数栈
    StackNum *num;
    num = malloc(sizeof(StackNum));
    num->top = -1;
    
    char x;
    int i = 0;
    x = [str characterAtIndex:i];
    while (x != '#' || getfuTop(fu) != '#') {
        if (isnumber(x)) {             //取到数字
            float data = 0;
            float v = 10;
            while (isnumber(x) || x == '.'){       //取到操作符结束
                if (x == '.') {
                    i++;
                    x = [str characterAtIndex:i];
                    while (isNumber(x)) {
                        data = data + (x-'0')/v;
                        v = v*10;
                        i++;
                        x = [str characterAtIndex:i];
                    }
                }else{
                    data = data*10 + x-'0';
                    i++;
                    x = [str characterAtIndex:i];
                }
            }
            pushNum(num, data);
        }else{                          //取到操作符
            switch (compare(getfuTop(fu),x)) {   //与栈顶操作符比较
                case -1:
                    pushfu(fu, x);  // >
                    i++;
                    x = [str characterAtIndex:i];

                    break;
                case 1:{           // <
                    float x = getNumTop(num);
                    PopNum(num);
                    float y = getNumTop(num);
                    PopNum(num);
                    pushNum(num,value(x, getfuTop(fu), y));  //计算
                    Popfutop(fu);
                    break;
                }
                case 0:             // =
                    Popfutop(fu);
                    i++;
                    x = [str characterAtIndex:i];
                    break;
                default:
                    break;
            }
        }
    }
    return getNumTop(num);
}
-(NSString *)houz:(NSString *)str{
    str = [str stringByAppendingString:@"#"];
    NSLog(@"%@",str);
    NSString *hz = [[NSString alloc] init];
    //操作符栈
    Stackfu *fu;   //指针s指向栈
    //初始化栈（置空)
    fu = malloc(sizeof(Stackfu));
    fu->top = -1;
    pushfu(fu,'#');
    
    char x;
    int i = 0;
    x = [str characterAtIndex:i];
        while (x != '#' || getfuTop(fu) != '#') {
            if (isnumber(x) || x == '.') {             //取到数字
                while (isnumber(x)){       //取到操作符结束
                    hz = [hz stringByAppendingFormat:@"%c ",[str characterAtIndex:i]];
                    i++;
                    x = [str characterAtIndex:i];
                }
            }else{                          //取到操作符
                switch (compare(getfuTop(fu),x)) {   //与栈顶操作符比较
                    case -1:
                        pushfu(fu, x);  // >
                        i++;
                        x = [str characterAtIndex:i];
                        break;
                    case 1:{           // <
                        hz = [hz stringByAppendingFormat:@"%c",getfuTop(fu)];
                        Popfutop(fu);  //栈顶出栈
                        break;
                    }
                    case 0:             // =
                        Popfutop(fu);
                        i++;
                        x = [str characterAtIndex:i];
                        break;
                    default:
                        break;
                }
            }
        }
        NSLog(@"-----%@",hz);
    return hz;
}
//取栈顶元素
char getfuTop(Stackfu *x){
    if (x->top == -1) {
        return '0';
    }else{
        return x->data[x->top];
    }
}

float getNumTop(StackNum *x){
    if (x->top == -1) {
        return 0;
    }else{
        return x->data[x->top];
    }
}

//入栈函数，X为要进的栈，Y要进栈的元素
//操作符
int pushfu(Stackfu *x,char y){
    if (x->top == M-1) {
        return 0 ;
    }else{
        x->top++;
        x->data[x->top] = y;
        return 1;
    }
}
//操作数
int pushNum(StackNum *x,float y){
    if (x->top == M-1) {
        return 0 ;
    }else{
        x->top++;
        x->data[x->top] = y;
        return 1;
    }
}


//栈顶退栈
int Popfutop(Stackfu *x){
    if (x->top == -1) {
        return 0;
    }else{
        x->top = x->top-1;
        return 1;
    }
}

int PopNum(StackNum *x){
    if (x->top == -1) {
        return 0;
    }else{
        x->top = x->top-1;
        return 1;
    }
}
//是否为数字
int isNumber(char x){
    if (x >= '0' && x <= '9') {
        return 1;
    }else{
        return 0;
    }
}

int compare(char a, char b)
{
    int i = -1;
    int j = -1;
    switch(a)
    {
        case '#':
            i++;
        case ')':
            i++;
        case '(':
            i++;
        case '/':
            i++;
        case '*':
            i++;
        case '-':
            i++;
        case '+':
            i++;
        default:
            break;
    }
    
    switch(b)
    {
        case '#':
            j++;
        case ')':
            j++;
        case '(':
            j++;
        case '/':
            j++;
        case '*':
            j++;
        case '-':
            j++;
        case '+':
            j++;
        default:
            break;
    }
    
    if(i >= 0 && j >= 0)
    {
        return priority[i][j];
    }
    else
    {
        return -2;
    }
}
float value(float x,char fu,float y){     //计算x 【】 y的值
    switch (fu) {
        case '+':
            return y + x;
        case '-':
            return y - x;
        case '*':
            return y * x;
        case '/':
            return y / x;
        default:
            return 0;
            break;
    }
}
@end
