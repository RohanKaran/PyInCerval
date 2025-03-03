from interval.interval import PyInterval

def test_add():
    a = PyInterval(1.0, 2.0)
    b = PyInterval(3.0, 4.0)
    result = a.add(b)
    assert result.iv.lower == 4.0
    assert result.iv.upper == 6.0
