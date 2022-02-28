part of 'ex03_null_aware_operators.dart';

///Instructions:
/// Try substituting in the ??= and ?? operators to implement the described 
/// behavior in the following snippet.

/// Ignore all initial errors in the DartPad.
String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}