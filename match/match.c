
#include<stdio.h>

#define MAX_LEN 8

char *match(char *s,char ch);

int main(void){
    char ch,str[MAX_LEN],*p=NULL;
    
    printf("Please Input the String:\n");
    scanf("%s",str);    // Here, since scanf doesn't check availability, abort trap: 6 will be raised when writting to out floating memory.
    getchar();
    ch=getchar();
    p = match(str, ch);
    (p != NULL) ? printf("%s\n",p) : printf("Not Found\n");
    return 0;
}

char *match(char *s,char ch){
    int counter = 0;
    while(*s!='\0' && counter < MAX_LEN) {
        if(*s==ch) return(s);
        s++;
        counter++;
    }
    return NULL;
}
