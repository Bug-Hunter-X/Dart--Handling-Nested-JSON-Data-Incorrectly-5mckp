# Dart: Handling Nested JSON Data Incorrectly

This repository demonstrates a common error in Dart when working with nested JSON data and provides a solution.

The `bug.dart` file contains code that attempts to access nested JSON data without checking for the existence of the keys.  This can lead to runtime exceptions if the nested keys are missing.

The `bugSolution.dart` file provides a corrected version of the code that safely handles potential missing keys.

## How to reproduce the bug

1. Run the `bug.dart` file.
2. Observe the error if the API response doesn't contain the expected nested structure.

## Solution

The solution involves checking for the existence of the keys before accessing them using the ?. operator, the ?? operator or the map method.
