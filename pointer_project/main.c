#include "file_lib.h"
#include "sorter.h"
#include <stdio.h>
#include <string.h>

/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){

	// Read the original file.
	char* contents;
	size_t size = load_file(argv[1], &contents);
	
	// Sort the file with the function you wrote.
	sort(&contents, size);
	
	// Write out the new file.	
	size_t final = save_file(argv[2],contents,size);
	printf("\nSaved file \"%s\"\n\n",argv[2]);	

}

// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
