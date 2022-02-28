part of 'ex14_named_constructors.dart';
/// Instructions:
/// Give the Color class a constructor named Color.black that sets all three properties 
/// to zero.

// Ignore all initial errors in the DartPad.
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // Create a named constructor called "Color.black" here:
  Color.black({this.red=0, this.green=0, this.blue=0});
}