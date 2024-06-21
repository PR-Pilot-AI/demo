# Demo: 🧪 Analyze and Fix Failed Unit Tests

Running automated tests and understanding the results is a crucial part of the software development process. 
In this demo, we will show how PR Pilot can analyze the results of failed unit tests and suggest fixes to make the tests pass.

## How it works 
Running [run.sh](./run.sh), PR Pilot will:
1. 📝 Render the template [analyze-test-results.md.jinja2](./analyze-test-results.md.jinja2)
2. 🧪 Execute the shell command `python3 test_fibonacci.py` to run the test script and use the output as part of the prompt
3. 🔍 Analyze the test results, read the relevant code and suggest fixes to make the tests pass


## Example Output

Running the test analysis script in `analyze-test-results/`:

```bash
➜  analyze-test-results git:(main) ✗ ./run.sh                   
❌  Running shell command: python3 test_fibonacci.py (0:00:00.08)
✔ Task created: faa27da3-5c0e-4bd0-98e7-a18c431b04d5 (0:00:00.00)
✔ Analyze and Fix Failed Unit Tests in test_fibonacci.py (0:00:13.55)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│                                                                                                    Analysis of Test Failures                                                                                                    │
│                                                                                                                                                                                                                                 │
│                                                                                                          Failed Tests                                                                                                           │
│                                                                                                                                                                                                                                 │
│  1 test_fibonacci_raises_error_for_negative_n                                                                                                                                                                                   │
│     • Error: Expected ValueError not raised.                                                                                                                                                                                    │
│     • Code Snippet:                                                                                                                                                                                                             │
│                                                                                                                                                                                                                                 │
│        def test_fibonacci_raises_error_for_negative_n(self):                                                                                                                                                                    │
│            with self.assertRaises(ValueError):                                                                                                                                                                                  │
│                fibonacci(-1)                                                                                                                                                                                                    │
│                                                                                                                                                                                                                                 │
│  2 test_fibonacci_returns_correct_value_for_positive_n                                                                                                                                                                          │
│     • Error: Expected fibonacci(10) to be 55, but got -2310.                                                                                                                                                                    │
│     • Code Snippet:                                                                                                                                                                                                             │
│                                                                                                                                                                                                                                 │
│        def test_fibonacci_returns_correct_value_for_positive_n(self):                                                                                                                                                           │
│            self.assertEqual(fibonacci(10), 55)                                                                                                                                                                                  │
│                                                                                                                                                                                                                                 │
│  3 test_fibonacci_returns_one_when_n_is_one                                                                                                                                                                                     │
│     • Error: Expected fibonacci(1) to be 1, but got -42.                                                                                                                                                                        │
│     • Code Snippet:                                                                                                                                                                                                             │
│                                                                                                                                                                                                                                 │
│        def test_fibonacci_returns_one_when_n_is_one(self):                                                                                                                                                                      │
│            self.assertEqual(fibonacci(1), 1)                                                                                                                                                                                    │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                        Cause of Failures                                                                                                        │
│                                                                                                                                                                                                                                 │
│ The fibonacci function implementation in analyze-test-results/test_fibonacci.py has the following issues:                                                                                                                       │
│                                                                                                                                                                                                                                 │
│  1 Negative Input Handling: The function does not raise a ValueError for negative inputs.                                                                                                                                       │
│  2 Incorrect Base Case for n == 1: The function returns -42 instead of 1.                                                                                                                                                       │
│  3 Recursive Case: The function's recursive implementation is incorrect, leading to wrong results for positive n.                                                                                                               │
│                                                                                                                                                                                                                                 │
│                                                                                                         Suggested Fixes                                                                                                         │
│                                                                                                                                                                                                                                 │
│  1 Raise ValueError for Negative Inputs:                                                                                                                                                                                        │
│                                                                                                                                                                                                                                 │
│     if n < 0:                                                                                                                                                                                                                   │
│         raise ValueError("Input should be a non-negative integer")                                                                                                                                                              │
│                                                                                                                                                                                                                                 │
│  2 Correct Base Case for n == 1:                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│     elif n == 1:                                                                                                                                                                                                                │
│         return 1                                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│  3 Fix Recursive Case:                                                                                                                                                                                                          │
│                                                                                                                                                                                                                                 │
│     else:                                                                                                                                                                                                                       │
│         return fibonacci(n - 1) + fibonacci(n - 2)                                                                                                                                                                              │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                   Updated fibonacci Function                                                                                                    │
│                                                                                                                                                                                                                                 │
│ Here is the corrected fibonacci function:                                                                                                                                                                                       │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│  def fibonacci(n):                                                                                                                                                                                                              │
│      """Calculate the Fibonacci number of n"""                                                                                                                                                                                  │
│      if n < 0:                                                                                                                                                                                                                  │
│          raise ValueError("Input should be a non-negative integer")                                                                                                                                                             │
│      elif n == 0:                                                                                                                                                                                                               │
│          return 0                                                                                                                                                                                                               │
│      elif n == 1:                                                                                                                                                                                                               │
│          return 1                                                                                                                                                                                                               │
│      else:                                                                                                                                                                                                                      │
│          return fibonacci(n - 1) + fibonacci(n - 2)                                                                                                                                                                             │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│ By applying these changes, the tests should pass successfully.                                                                                                                                                                  │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
```