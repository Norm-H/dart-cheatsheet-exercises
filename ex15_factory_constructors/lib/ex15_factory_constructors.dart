part 'integer_holder.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  final errs = <String>[];

  bool _throwed = false;
  try {
    IntegerHolder.fromList([]);
  } on UnimplementedError {
    _result(false, ['Test failed. Did you implement the method?']);
    return;
  } on Error {
    _throwed = true;
  } catch (e) {
    _result(false, ['Called IntegerSingle.fromList([]) and got an exception of type ${e.runtimeType}.']);
    return;
  }
  
  if (!_throwed) {
    errs.add('Called IntegerSingle.fromList([]) and didn\'t throw Error.');
  } 

  try {
    final obj = IntegerHolder.fromList([1]);
    
    if (obj is! IntegerSingle) {
      errs.add('Called IntegerHolder.fromList([1]) and got an object of type ${obj.runtimeType} instead of IntegerSingle.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1]) and got an IntegerSingle with an \'a\' value of ${obj.a} instead of the expected (1).');
      }
    }
  } catch (e) {
    _result(false, ['Called IntegerHolder.fromList([]) and got an exception of type ${e.runtimeType}.']);
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2]);
    
    if (obj is! IntegerDouble) {
      errs.add('Called IntegerHolder.fromList([1, 2]) and got an object of type ${obj.runtimeType} instead of IntegerDouble.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble with an \'a\' value of ${obj.a} instead of the expected (1).');
      }
      
      if (obj.b != 2) {
        errs.add('Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble with an \'b\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    _result(false, ['Called IntegerHolder.fromList([1, 2]) and got an exception of type ${e.runtimeType}.']);
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2, 3]);
    
    if (obj is! IntegerTriple) {
      errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an object of type ${obj.runtimeType} instead of IntegerTriple.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple with an \'a\' value of ${obj.a} instead of the expected (1).');
      }
      
      if (obj.b != 2) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple with an \'a\' value of ${obj.b} instead of the expected (2).');
      }

      if (obj.c != 3) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple with an \'a\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    _result(false, ['Called IntegerHolder.fromList([1, 2, 3]) and got an exception of type ${e.runtimeType}.']);
    return;
  }

  if (errs.isEmpty) {
    _result(true);
  } else {
    _result(false, errs);
  }
}