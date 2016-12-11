#include<stdio.h>

/**
3.结构体返回值方法调用
**/
struct points{
    int x;
    int y;
}

struct points exchange(int *xp,int y){
    struct points p;
    p.x=*xp;
    p.y=y;
    return p;
}

int main(int argc,char *args[]){
    int a=4;
    struct points r = exchange(&a,5);
    printf("points.x=%d,points.y=%d",r.x,r.y);
}
