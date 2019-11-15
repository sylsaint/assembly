#include<stdio.h>
#include "cnt.h"

static int counter = 0;

void int_counter() {
    counter++;
}

void print_counter() {
    printf("Counter: %d\n", counter);
}

