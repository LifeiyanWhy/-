//
//  hz.m
//  data
//
//  Created by 李飞艳 on 2017/9/27.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "hz.h"
@implementation hz
//int comp[7][7] = {1,1,-1,-1,-1,1,1,1,1,-1,-1,-1,1,1,1,1,1,1,-1,1,1,1,1,1,1,-1,1,1,-1,-1,-1,-1,-1,0,-2,1,1,1,1,-2,1,1,-1,-1,-1,-1,-1,-2,0};
- (NSString *)string:(NSString *)str{
    str = [str stringByAppendingString:@"#"];
    NSString *hz;
    //操作符栈
    Stack *fu;   //指针s指向栈
    //初始化栈（置空)
    fu = malloc(sizeof(Stack));
    fu->top = -1;
//    pushfu(fu,'#');
    
    char x;
    int i = 0;
    x = [str characterAtIndex:i];
//    while (x != '#' || getfuTop(fu) != '#') {
//        //        printf("sum = \n");
//        if (isnumber(x)) {             //取到数字
//            while (isnumber(x)){       //取到操作符结束
//                str = [str stringByAppendingFormat:@"%c",[hz characterAtIndex:i]];
//                i++;
//            }
//        }else{                          //取到操作符
//            switch (compare(getfuTop(fu),x)) {   //与栈顶操作符比较
//                case -1:
//                    pushfu(fu, x);  // >
//                    i++;
//                    x = [str characterAtIndex:i];
//                    break;
//                case 1:{           // <
//                    str = [str stringByAppendingFormat:@"%c",[hz characterAtIndex:getfuTop(fu)]];
//                    Popfutop(fu);  //栈顶出栈
//                    break;
//                }
//                case 0:             // =
//                    Popfutop(fu);
//                    i++;
//                    x = [str characterAtIndex:i];
//                    break;
//                default:
//                    break;
//            }
//        }
//    }
//    NSLog(@"-----%@",hz);
    return hz;
}
//
////取栈顶元素
//char getfuTop(Stack *x){
//    if (x->top == -1) {
//        return '0';
//    }else{
//        return x->data[x->top];
//    }
//}
//
////入栈函数，X为要进的栈，Y要进栈的元素
////操作符
//int pushfu(Stack *x,char y){
//    if (x->top == N-1) {
//        return 0 ;
//    }else{
//        x->top++;
//        x->data[x->top] = y;
//        return 1;
//    }
//}
//
////栈顶退栈
//int Popfutop(Stack *x){
//    if (x->top == -1) {
//        return 0;
//    }else{
//        x->top = x->top-1;
//        return 1;
//    }
//}
//
////是否为数字
//int isNumber(char x){
//    if (x >= '0' && x <= '9') {
//        return 1;
//    }else{
//        return 0;
//    }
//}
//int compare(char a, char b)
//{
//    int i = -1;
//    int j = -1;
//    switch(a)
//    {
//        case '#':
//            i++;
//        case ')':
//            i++;
//        case '(':
//            i++;
//        case '/':
//            i++;
//        case '*':
//            i++;
//        case '-':
//            i++;
//        case '+':
//            i++;
//        default:
//            break;
//    }
//    
//    switch(b)
//    {
//        case '#':
//            j++;
//        case ')':
//            j++;
//        case '(':
//            j++;
//        case '/':
//            j++;
//        case '*':
//            j++;
//        case '-':
//            j++;
//        case '+':
//            j++;
//        default:
//            break;
//    }
//    
//    if(i >= 0 && j >= 0)
//    {
//        return comp[i][j];
//    }
//    else
//    {
//        return -2;
//    }
//}
@end

