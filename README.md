# boilerplate-r

Minimal R boilerplate for solving DSA/competitive-programming problems.

## Files

- `main.R` - reusable input/output template with a `solve_case()` function to fill in per problem.

## Usage

Run with redirected input:

```bash
Rscript main.R < input.txt
```

If your problem does not use a test-case count (`t`) as the first token, set `HAS_TEST_CASES <- FALSE` in `main.R`.