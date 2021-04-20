#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void sort(char** contents, int size){
	
	// Count the number of lines	
	int numlines = 0;

	for(int i = 0; i<size; ++i){
		if((*contents)[i] == '\n')
			++numlines;
	}

	printf("Found %d words.\n",numlines);
	
	// Make an array of tokenized strings for each line/word
	// which we can use to compare with each other
	char** words = malloc(numlines*sizeof(char*));
	int wc = 0;
	char* word = strtok(*contents, "\n"); 
	while(word != NULL){
		if(word != NULL){
			words[wc] = word;
			++wc;
			printf("%s\n",word);
		}
		word = strtok(NULL, "\n");
	}

	// Use Insertion Sort to sort the given list
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
	
	//printf("You are here\n");

	*contents = malloc(numlines*sizeof(char*));
	for(int i = 0; i < numlines; ++i){
		contents[i] = words[i];
	}
	
//	*contents = *words;
	printf("WORDS:\n");
	for(int i = 0; i < numlines; ++i){
		printf("%s\n",contents[i]);
	}


	free(words);
	printf("Sort done!\n"); 
}
