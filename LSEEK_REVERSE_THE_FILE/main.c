#include <stdio.h>
#include <stdlib.h>
#include<fcntl.h>
#include <unistd.h>
#include <errno.h>



char buffer[1];

int main()
{
int fd1,fd2;    
char file1[50],file2[50];
printf("Enter file to reverse: ");
scanf("%s",file1);   
if((fd1=open(file1,O_RDONLY))==-1)  
{
  printf("File does not exist\n");
  return -1;
}
printf("Enter file to output in: ");
scanf("%s",file2);   
fd2=open(file2,O_RDWR | O_CREAT,0777);   
int size=lseek(fd1,0,SEEK_END);   
printf("%d",size);
int i;
for(i=1;i<=size;i++)
{
   if((lseek(fd1,-i,SEEK_END))==-1)   
   {
      printf("%s\n",strerror(errno));
   }
   int rd=read(fd1,buffer,1);    
   int wr=write(fd2,buffer,1);  
   if(wr==0)
   printf("Did not write to file\n");

}
}