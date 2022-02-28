part 'stringify.dart';

void test(){
  final pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail!.join('\n'));

  try {
    final str = stringify(2, 3); 

    if (str == '2 3') {
      _result(true);
    } else if (str == '23') {
      _result(false, ['Test failed. It looks like you forgot the space!']);
    } else {
      _result(false, ['That\'s not quite right. Keep trying!']);
    }
  } on UnimplementedError {
    _result(false, ['Test failed. Did you implement the method?']);
  } catch (e) {
    _result(false, ['Tried calling stringify(2, 3), but received an exception: ${e.runtimeType}']);
  }
}