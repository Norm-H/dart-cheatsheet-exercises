part of 'ex16_redirecting_constructors.dart';

/// Instructions:
/// Remember the Color class from above? Create a named constructor called black, but 
/// rather than manually assigning the properties, redirect it to the default 
/// constructor with zeros as the arguments.

/// Ignore all initial errors in the DartPad.
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // Create a named constructor called "black" here and redirect it
  // to call the existing constructor
  Color.black(): this(0,0,0);
}
