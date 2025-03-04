from pyincerval.interval import PyInCerval


def test_add():
    a = PyInCerval(1.0, 2.0)
    b = PyInCerval(3.0, 4.0)
    result = a.add(b)
    print(dir(result))
    assert result.lower == 4.0
    assert result.upper == 6.0
