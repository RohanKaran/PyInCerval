#include "c_interval.h"
#include <math.h>

Interval interval_add(Interval a, Interval b) {
    Interval result = {a.lower + b.lower, a.upper + b.upper};
    return result;
}

Interval interval_mul(Interval a, Interval b) {
    Interval result;
    double p1 = a.lower * b.lower;
    double p2 = a.lower * b.upper;
    double p3 = a.upper * b.lower;
    double p4 = a.upper * b.upper;
    result.lower = fmin(fmin(p1, p2), fmin(p3, p4));
    result.upper = fmax(fmax(p1, p2), fmax(p3, p4));
    return result;
}
