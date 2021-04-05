#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	float h;
	float s;
	float v;
	float r;
	float pi;

	printf("nhap chieu cao h\n");
	scanf("%f",&h);
	printf("nhap duong kinh r\n");
	scanf("%f",&r);

	v=3.14*r*r*h;

	printf("the tich hinh tru la : %f",v);

	return 0;
}

