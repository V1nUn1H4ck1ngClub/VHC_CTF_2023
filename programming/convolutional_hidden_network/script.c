// gcc -o script script.c
#include "flag.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(){
    _Static_assert(sizeof(key) == 10, "Wrong key size!");

    char* output = malloc(sizeof(flag));
    strncpy(output, flag, sizeof(flag));
    int flag_len = strlen(flag);
    int key_len = sizeof(key);

    for (int i = 0; i < flag_len - key_len + 1; i++){
        for (int j = 0; j < key_len; j++){
            output[i + j] ^= key[j];
        }
    }

    printf("%s\n", output);
    // for (int i = 0; i < flag_len; i++){
    //     printf("%u, ", (unsigned char)output[i]);
    // }
    free(output);
    return 0;
}