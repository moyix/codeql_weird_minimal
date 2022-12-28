#include <stdio.h>
#include <stdlib.h>

int getMonthlySales_1(int month) {
    return month * 1073741824;
}

int main(int argc, char *argv[]) {
    // sum the number of sales for the first quarter
    int sum = 0;
    for (int i = 0; i < 3; i++) {
        sum += getMonthlySales_1(i);
    }
}
