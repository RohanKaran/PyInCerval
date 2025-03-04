from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = cythonize(
    [
        Extension(
            name="pyincerval.interval",
            sources=["pyincerval/interval.pyx", "pyincerval/c_interval.c"],
            include_dirs=["pyincerval"],
        )
    ],
    language_level=3,  # ensures Python 3 code generation
)

setup(
    name="pyincerval",
    version="0.0.1",
    packages=["pyincerval"],
    ext_modules=ext_modules,
)
