#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *program = "/bin/ls"
is_executable(program);

int main(int argc, char *argv[]) {
    // TODO: Add some code here to create diary_pathname.
    // diary_pathname = $HOME/.diary
    char *home_path = getenv("HOME");
    char *base_path = ".diary";

    int pathname_len = strlen(home_path) + strlen(base_path) + 2;
    char diary_pathname[pathname_len];
    // $HOME/.diary
    snprintf(diary_pathname, pathname_len, "%s/%s", home_path, base_path);

    // Open the diary file. 
    FILE *stream = fopen(diary_pathname, "r");
    if (stream == NULL) {
        perror(diary_pathname);
        return 1;
    }

    // Print out the contents of the diary file. 
    int byte;
    while ((byte = fgetc(stream)) != EOF) {
        fputc(byte, stdout);
    }
    fclose(stream);

    return 0;
}