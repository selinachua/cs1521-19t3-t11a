#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror(argv[1]);
        return 1;
    }

    char c;
    while ((c = fgetc(file)) != '\n') {
        fputc(c, stdout);
    }
    fputc('\n', stdout);

    fclose(file);

    return 0;
}


FILE *fopen(char *string, char *mode) {
    if (string == NULL) 
    int fd = open(string);
}