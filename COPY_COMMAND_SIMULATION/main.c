#include<unistd.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/fcntl.h>
#include<stdio.h>
#include<errno.h>
#define buf_size 8192
#include<stdlib.h>
int main()
{
    char rd[8192];
    char wrt[8192];
    
    char *buffer = (char *) calloc(buf_size, sizeof(char)); 
    
    ssize_t retin;
    ssize_t retout;
    
    
    
    printf("Enter the file to read\n");
    scanf("%s",rd);
    
    
    printf("Enter the file to write to\n");
    
    scanf("%s",wrt);
    
    int fop=open(rd,O_RDONLY);
    
    int fout=open(wrt,O_WRONLY|O_CREAT,0777);
    
    
    if(fop==-1 || fout==-1)
    {
        perror("Open");
        return 1;
    }
    retin=read(fop,buffer,buf_size);
    
    while(retin>0)
    {
        retout=write(fout,buffer,buf_size);
        if(retout!=retin)
        {
            perror("open");
            return 2;
        }
        
    }
    close(fop);
    close(fout);
    return EXIT_SUCCESS;
}