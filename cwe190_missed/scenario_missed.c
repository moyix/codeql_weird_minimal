#include <stdio.h>
#include <stdlib.h>

extern int getMonthlySales_2(int month);

int main(int argc, char *argv[]) {
    // sum the number of sales for the first quarter
    int firstQuarter = getMonthlySales_2(1) + getMonthlySales_2(2) + getMonthlySales_2(3);
    
    // sum the number of sales for the second quarter
    int secondQuarter = getMonthlySales_2(4) + getMonthlySales_2(5) + getMonthlySales_2(6);
    
    // sum the number of sales for the third quarter
    int thirdQuarter = getMonthlySales_2(7) + getMonthlySales_2(8) + getMonthlySales_2(9);
    
    // sum the number of sales for the fourth quarter
    int fourthQuarter = getMonthlySales_2(10) + getMonthlySales_2(11) + getMonthlySales_2(12);
    
    printf("First quarter: %i\n", firstQuarter);
    printf("Second quarter: %i\n", secondQuarter);
    printf("Third quarter: %i\n", thirdQuarter);
    printf("Fourth quarter: %i\n", fourthQuarter);
    
    return 0;
}
