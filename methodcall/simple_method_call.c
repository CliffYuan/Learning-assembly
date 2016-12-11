#include<stdio.h>
/**
1.简单的方法调用
**/
int exchange(int xp,int y){
    int c=xp+y;
    return c;
}

int main(int argc,char *args[]){
    int a=4;
    int b= exchange(a,5);
    printf("a=%d,b=%d",a,b);
}
