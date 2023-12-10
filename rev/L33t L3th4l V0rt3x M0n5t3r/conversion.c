#include <stdio.h>

int main(){
    // copy from wyvern.ll
    short a[16] = {16977,  23678,  28325,  12148,  -12907,  23399,  -10695,  20663,  21868,  -13461,  -21535,  7761,  22036,  -7804,  27056,  14160};
    for(int i = 0; i < 16; i++){
        printf("%d, ", (unsigned short)a[i]);
    }
}