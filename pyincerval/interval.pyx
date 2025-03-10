# pyincerval/interval.pyx
# cython: language_level=3

from .interval cimport Interval, interval_add, interval_mul

cdef class PyInCerval:
    cdef Interval iv

    def __init__(self, double lower, double upper):
        self.iv.lower = lower
        self.iv.upper = upper

    def __add__(self, PyInCerval other):
        cdef PyInCerval result = PyInCerval.__new__(PyInCerval)
        result.iv = interval_add(self.iv, other.iv)
        return result

    def __mul__(self, PyInCerval other):
        cdef PyInCerval result = PyInCerval.__new__(PyInCerval)
        result.iv = interval_mul(self.iv, other.iv)
        return result

    def __repr__(self):
        return f"[{self.iv.lower}, {self.iv.upper}]"

    @property
    def lower(self):
        return self.iv.lower

    @property
    def upper(self):
        return self.iv.upper
