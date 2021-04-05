#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	float a;
	printf("nhap ban kinh duong tron:");
	scanf("%d", &a);
	if (a <=0){
		printf("nhap a > 0");
	} 
	else
	{
		printf("chu vi duong tron %d = %d",a,2*3,14*a);
		printf("dien tich duong tron %d = %d",a,3.14*a*a);
	}
	return 0;
}
