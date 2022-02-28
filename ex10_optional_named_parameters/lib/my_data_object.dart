part of 'ex10_optional_named_parameters.dart';

/// Instructions:
/// Add a copyWith() instance method to the MyDataObject class. It should take three 
/// named, nullable parameters:

///   int? newInt
///   String? newString
///   double? newDouble

/// Your copyWith() method should return a new MyDataObject based on the current 
/// instance, with data from the preceding parameters (if any) copied into the object’s 
/// properties. For example, if newInt is non-null, then copy its value into anInt.

/// Ignore all initial errors in the DartPad.
class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
     this.anInt = 1,
     this.aString = 'Old!',
     this.aDouble = 2.0,
  });
  
   // Add your copyWith method here:
  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) { 
    newInt ??= anInt;
    newString ??= aString;
    newDouble ??= aDouble;

    return MyDataObject(
      anInt: newInt,
      aString: newString,
      aDouble: newDouble,
    );
  }
}
