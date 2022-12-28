#include <stdio.h>
#include <stdlib.h>

extern int getMonthlySales_1(int month);

int main(int argc, char *argv[]) {
    // sum the number of sales for the first quarter
    int sum = 0;
    for (int i = 0; i < 3; i++) {
        sum += getMonthlySales_1(i);
    }
}
