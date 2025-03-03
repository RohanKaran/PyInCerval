cdef extern from "c_interval.h":
    cdef struct Interval:
        double lower
        double upper
    Interval interval_add(Interval a, Interval b)
    Interval interval_mul(Interval a, Interval b)

cdef class PyInterval:
    cdef Interval iv

    def __init__(self, double lower, double upper):
        self.iv.lower = lower
        self.iv.upper = upper

    def add(self, PyInterval other):
        cdef PyInterval result = PyInterval(0, 0)
        result.iv = interval_add(self.iv, other.iv)
        return result

    def mul(self, PyInterval other):
        cdef PyInterval result = PyInterval(0, 0)
        result.iv = interval_mul(self.iv, other.iv)
        return result

    def __repr__(self):
        return f"[{self.iv.lower}, {self.iv.upper}]"
