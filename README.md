# Uncommon Dart Error: Handling Non-Exception Errors

This repository demonstrates a subtle error handling issue in Dart where throwing a non-standard error (a String in this case), can be missed if your error handling only looks for `Exception` types.  The example shows how a `catch (e)` block is necessary to capture these uncommon error scenarios.

## Problem

The `fetchData` function simulates an asynchronous operation that might throw an error.  However, the error thrown is a String, not a standard Dart Exception.  If you only handle `Exception` types, you miss this error.

## Solution

The solution demonstrates how to handle these non-standard errors using a general `catch (e)` block, which should always be considered as a last resort, after more specific exception handling.