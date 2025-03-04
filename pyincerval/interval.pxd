cdef extern from "./c_interval.h" nogil:
    cdef struct Interval:
        double lower
        double upper

    Interval interval_add(Interval a, Interval b)
    Interval interval_mul(Interval a, Interval b)
