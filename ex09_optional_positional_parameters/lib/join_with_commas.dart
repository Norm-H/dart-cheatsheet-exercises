part of 'ex09_optional_positional_parameters.dart';

/// Instructions:
/// Implement a function called joinWithCommas() that accepts one to five integers, 
/// then returns a string of those numbers separated by commas. Here are some examples 
/// of function calls and returned values:

/// Function call	 	                    Returned value
/// joinWithCommas(1)	 	                '1'
/// joinWithCommas(1, 2, 3)	 	          '1,2,3'
/// joinWithCommas(1, 1, 1, 1, 1)	 	    '1,1,1,1,1'
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var str = a.toString();
  for(int? i in [b,c,d,e]){
    // check int params for null, stringize non-null integers
    if(i != null) str += ',${i.toString()}';
  }
  return str;
}