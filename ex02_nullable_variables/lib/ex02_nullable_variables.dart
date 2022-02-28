part 'nullable_strings.dart';

void test() {
  final pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail!.join('\n'));
  
  try {
    if (name == 'Jane' && address == null) {
      // verify that "name" is nullable
      name = null;
      _result(true);
    } else {
      _result(false, ['That\'s not quite right. Keep trying!']);
    }
  } catch (e) {
    _result(false, ['Tried calling stringify(2, 3), but received an exception: ${e.runtimeType}']);
  }
}