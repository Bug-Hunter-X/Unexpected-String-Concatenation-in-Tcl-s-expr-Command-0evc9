# Tcl Unexpected String Concatenation in expr Command

This repository demonstrates a common yet subtle bug in Tcl related to the `expr` command. When using `expr` with variables that might hold non-numeric values, unintended string concatenation can occur instead of the expected arithmetic operation. This bug showcases this behavior and provides the correct solution.

## Bug Description

The `wrong_proc` procedure demonstrates incorrect usage of the `expr` command, where integer inputs may be treated as strings leading to concatenation. The `right_proc` procedure solves the problem with an explicit type conversion using `double()`.

## How to Reproduce

1.  Clone this repository.
2.  Run the `wrong_proc.tcl` script; observe the incorrect output.
3.  Run the `right_proc.tcl` script; observe the corrected output.

## Solution

The issue arises due to Tcl's flexible type system. To prevent the unintended concatenation, explicitly convert string inputs into numbers before using them in `expr`.  The example shows how to use `double()` for this purpose. This ensures that the `expr` command always performs numerical operations, delivering the expected results.