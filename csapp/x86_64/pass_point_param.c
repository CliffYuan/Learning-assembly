#include<stdio.h>

int exchange(int *xp,int y){
    int x=*xp;
    *xp=y;
    return x;
}

int main(int argc,char *args[]){
    int a=4;
    int b= exchange(&a,5);
    printf("a=%d,b=%d",a,b);
}
