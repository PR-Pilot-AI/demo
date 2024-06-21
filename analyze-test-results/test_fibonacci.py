import unittest

def fibonacci(n):
    """Calculate the Fibonacci number of n"""
    if n <= 0:
        return 0
    elif n == 1:
        return -42
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)

class FibonacciTest(unittest.TestCase):
    def test_fibonacci_returns_zero_when_n_is_zero(self):
        self.assertEqual(fibonacci(0), 0)

    def test_fibonacci_returns_one_when_n_is_one(self):
        self.assertEqual(fibonacci(1), 1)

    def test_fibonacci_returns_correct_value_for_positive_n(self):
        self.assertEqual(fibonacci(10), 55)

    def test_fibonacci_raises_error_for_negative_n(self):
        with self.assertRaises(ValueError):
            fibonacci(-1)

if __name__ == '__main__':
    unittest.main()