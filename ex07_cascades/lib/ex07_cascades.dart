import 'big_object.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  
  BigObject obj;

  try {
    obj = fillBigObject(BigObject());
  } on UnimplementedError {
    _result(false, ['Tried to call fillBigObject but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, [
      'Caught an exception of type ${e.runtimeType} while running fillBigObject'
    ]);
    return;
  }

  final errs = <String>[];

  if (obj.anInt != 1) {
    errs.add(
        'The value of anInt was ${obj.anInt} rather than the expected (1).');
  }

  if (obj.aString != 'String!') {
    errs.add(
        'The value of aString was \'${obj.aString}\' rather than the expected (\'String!\').');
  }

  if (obj.aList.length != 1) {
    errs.add(
        'The length of aList was ${obj.aList.length} rather than the expected value (1).');
  } else {
    if (obj.aList[0] != 3.0) {
      errs.add(
          'The value found in aList was ${obj.aList[0]} rather than the expected (3.0).');
    }
  }
  
  if (!obj.done) {
    errs.add('It looks like allDone() wasn\'t called.');
  }

  if (errs.isEmpty) {
    _result(true);
  } else {
    _result(false, errs);
  }
}