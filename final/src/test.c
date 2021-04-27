#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	*x = *x * *x;
}

/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	a->first_name = "Jigglypuff";
	a->last_name = "Ketchum";
	a->g_number = 10;
	a->gpa = 1.16;

}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	a->first_name = b->first_name;
	a->last_name = b->last_name;
	a->g_number = b->g_number;
	a->gpa = b->gpa;
	a->roommate = b->roommate;
}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){
	b->first_name = a.first_name;
	b->last_name = a.last_name;
	b->g_number = a.g_number;
	b->gpa = a.gpa;
	b->roommate = a.roommate;
}

/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */
Student four(){
	Student a;
	a.first_name = "T. Yoshisaur";
	a.last_name = "Munchakoopas";
	a.g_number = 1990;
	a.gpa = 3.1;
	a.roommate = (&Mario);
	return a;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){
	static Student a;
	Student* b = &a;

	b->first_name = "Luigi";
	b->last_name = "Mario";
	b->g_number = 2;
	b->gpa = 3.54;
	return b;
}

/**
 * Create a hunk of memory we can use as an array of 10 
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){
	Student* b = (Student*) malloc(10*sizeof(Student));
	(b[3]).first_name = "Luigi";
	(b[3]).last_name = "Mario";
	(b[3]).g_number = 2;
	(b[3]).gpa = 3.54;
	return b;
}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 10th (index 9) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){
	Student* s = (Student*) malloc(10*sizeof(Student));
	(s[9]).first_name = "Luigi";
	(s[9]).last_name = "Mario";
	(s[9]).g_number = 2;
	(s[9]).gpa = 3.54;
	*students = s;
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	double x = 0;
	x = b*b;
	x -= (4*a*c);
	x = sqrt(x);
	x -= b;
	x = x/(2*a);
	return x;

}

/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){
	for(size_t i = 0; i < len; ++i){
		if((str[i] > 96) && (str[i] < 123)){
			str[i] = (str[i] - 32);
		}
	}
	printf("%s\n",str);
}
