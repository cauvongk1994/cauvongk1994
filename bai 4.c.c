#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
	
int main(void)
{
	int a;
	float b;

	printf("nhap so tien usd a\n",a);
	scanf("%d",&a);

	b = a*16.689 ;

	printf("b is %d * 16.689 = %.3f\n",a,b);
	return 0;
}

