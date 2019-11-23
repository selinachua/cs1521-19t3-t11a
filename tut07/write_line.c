#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "a");
    if (!file) {
        perror(argv[1]);
        return 1;
    }

    char c;
    while ((c = fgetc(stdin)) != '\n') {
        fputc(c, file);
    }


    fclose(file);

    return 0;
}