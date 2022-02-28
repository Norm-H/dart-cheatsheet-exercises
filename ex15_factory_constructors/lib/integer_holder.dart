part of 'ex15_factory_constructors.dart';

/// Instructions:
/// Fill in the factory constructor named IntegerHolder.fromList, making it do the 
/// following:

/// If the list has one value, create an IntegerSingle with that value.
/// If the list has two values, create an IntegerDouble with the values in order.
/// If the list has three values, create an IntegerTriple with the values in order.
/// Otherwise, throw an Error.
class IntegerHolder {
  IntegerHolder();
  
  // Implement this factory constructor.
  factory IntegerHolder.fromList(List<int> list) {
    if(list.length == 1) return IntegerSingle(list[0]);
    if(list.length == 2) return IntegerDouble(list[0], list[1]);
    if(list.length == 3) return IntegerTriple(list[0], list[1], list[2]);
    throw Error();    
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a); 
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b); 
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c); 
}
