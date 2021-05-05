#include<stdio.h>
nmain(){
	int idem=1;
	char c;
	c=getchar();
	printf("nhap chuoi can chuyen hoa\n");
	while(c!=EOF){
		if(c>=32&& <=65 || c=='A'){
		if(c=='a')
		idem++	;
		putchar(c);
		}
	c=getchar();
	}
	printf("nhap chu la :%d", idem);
}
