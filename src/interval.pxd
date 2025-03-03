cdef struct Interval:
    double lower
    double upper

cdef Interval interval_add(Interval a, Interval b)
cdef Interval interval_mul(Interval a, Interval b)
