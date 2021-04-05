#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
 {
 	float a,b,h;
 	
	printf 	("Nhap chieu cao ");
	scanf 	("%f", &h);

	printf 	("Nhap canh day bottom");
	scanf	("%f", &b);

	a=b*h/2;

	printf ("Dien tich tam giac la : %f", a);

	return 0;
}
