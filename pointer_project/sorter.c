#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void sort(char** contents, int size){
	
//	printf("\n");	
	int numlines = 0;

	for(int i = 0; i<size; ++i){
		if((*contents)[i] == '\n')
			++numlines;
	}
	printf("%i\n",numlines);
	char** words = malloc(numlines*sizeof(char*));
	char* word = strtok(*contents, "\n"); 
	int wc = 1;
	words[0] = word;
	while(word != NULL){
		word = strtok(NULL, "\n");
		words[wc] = word;
		if(word != NULL){
			++wc;
		}
	}
	printf("%s\n%s\n",words[0],words[4]);	
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


	contents = words;
	
	free(words);
 
}
