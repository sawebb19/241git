#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void sort(char** contents, int size){
	
	// Count the number of lines in the file by counting
	// the number of newlines
	
	int numlines = 0;

	for(int i = 0; i<size; ++i){
		if((*contents)[i] == '\n')
			++numlines;
	}

	printf("Found %d words:\n\n",numlines);
	
	// Make an array of tokenized strings for each line/word
	// which we can use to compare to each other for sorting

	char** words = malloc(numlines*sizeof(char*));
	int wc = 0;
	char* word = strtok(*contents, "\n"); 
	while(word != NULL){
		if(word != NULL){
			words[wc] = word;
			++wc;
		}
		word = strtok(NULL, "\n");
	}

	// Use Insertion Sort to sort the given list
	// If it seems like it hanged, it didn't, it
	// just takes a very long time

	char* temp;
	int comp;

	for(int j = 0; j < numlines-1; ++j){
		for(int i = 0; i < numlines-1; ++i){
			comp = strcasecmp(words[i],words[i+1]);
			if(comp>0){
				temp = words[i];
				words[i] = words[i+1];
				words[i+1] = temp;
			}
		}
	}

	
	for(int i = 0; i < numlines; ++i){
		printf("%s\n",words[i]);
	}

	// Store our sorted file into contents so that
	// it can be saved to a file

	*contents = malloc(size);
	for(int i = 0; i<size; ++i){
		(*contents)[i] = (*words)[i];
		if((*words)[i] == '\0'){
			(*contents)[i] = '\n';
		}
	}
	
	// Free up memory after malloc-ing
	free(words);
}
