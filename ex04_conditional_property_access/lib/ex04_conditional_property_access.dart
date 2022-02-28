part 'uppercase_it.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail![0]);
  final errs = <String>[];
  
  try {
    String? one = upperCaseIt(null);

    if (one != null) {
      errs.add('Looks like you\'re not returning null for null inputs.');
    }
  } catch (e) {
    errs.add('Tried calling upperCaseIt(null) and got an exception: ${e.runtimeType}.');
  }
  
  try {
    String? two = upperCaseIt('asdf');

    if (two == null) {
      errs.add('Looks like you\'re returning null even when str has a value.');
    } else if (two != 'ASDF') {
      errs.add('Tried upperCaseIt(\'asdf\'), but didn\'t get \'ASDF\' in response.');
    }
  } catch (e) {
    errs.add('Tried calling upperCaseIt(\'asdf\') and got an exception: ${e.runtimeType}.');
  }
  
  if (errs.isEmpty) {
   _result(true);
  } else {
   _result(false, errs);
  }  
}