#include <stdio.h>
#include "circleLib.h"
#include "newLib.h"
int main(int argc, char** argv){
	double perim = calcPerim(5);
	printf("%f\n",perim);
	double area = calcArea(5);
	printf("%f\n",area);
	int rPerim = rectPerim(5,4);
	printf("%i\n",rPerim);
	int rArea = rectArea(5,4);
	printf("%i\n",rArea);
}
