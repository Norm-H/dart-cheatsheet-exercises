part 'my_class.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  final obj = MyClass();
  final errs = <String>[];

  try {
    final product = obj.product;
    
    if (product != 30) {
      errs.add('The product property returned $product instead of the expected value (30).'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to use MyClass.product but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried to use MyClass.product, but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  try {
    obj.incrementValue1();
    
    if (obj.value1 != 3) {
      errs.add('After calling incrementValue, value1 was ${obj.value1} instead of the expected value (3).'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to use MyClass.incrementValue1 but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried to use MyClass.incrementValue1, but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);
    
    if (joined != 'one,two,three') {
      errs.add('Tried calling joinWithCommas([\'one\', \'two\', \'three\']) and received $joined instead of the expected value (\'one,two,three\').'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to use MyClass.joinWithCommas but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried to use MyClass.joinWithCommas, but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  if (errs.isEmpty) {
    _result(true);
  } else {
    _result(false, errs);
  }
}