library big_object;

/// Instructions:
/// Use cascades to create a single statement that sets the anInt, aString, 
/// and aList properties of a BigObject to 1, 'String!', and [3.0] (respectively) 
/// and then calls allDone(). 
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool done = false;  // Note: _done made public for testing
  
  void allDone() {
    done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  obj..anInt = 1
    ..aString = 'String!'
    ..aList = [3.0]
    ..allDone();
  return obj;    
}