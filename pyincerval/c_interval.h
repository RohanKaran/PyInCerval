#ifndef C_INTERVAL_H
#define C_INTERVAL_H

#include <math.h>

typedef struct Interval {
    double lower;
    double upper;
} Interval;

Interval interval_add(Interval a, Interval b);
Interval interval_mul(Interval a, Interval b);

#endif
