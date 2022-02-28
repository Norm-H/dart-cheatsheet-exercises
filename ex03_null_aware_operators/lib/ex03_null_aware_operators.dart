part 'null_aware_operations.dart';

void test(){
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  final errs = <String>[];
  
  try {
    updateSomeVars();
        
    if (foo != 'a string') {
      errs.add('Looks like foo somehow ended up with the wrong value.');
    } else if (bar != 'a string') {
      errs.add('Looks like bar ended up with the wrong value.');
    } else if (baz != 'a string') {
      errs.add('Looks like baz ended up with the wrong value.');
    }
  } catch (e) {
    errs.add('Tried calling updateSomeVars and received an exception: ${e.runtimeType}.');
  }
  
  if (errs.isEmpty) {
   _result(true);
  } else {
    _result(false, errs);
  }
}