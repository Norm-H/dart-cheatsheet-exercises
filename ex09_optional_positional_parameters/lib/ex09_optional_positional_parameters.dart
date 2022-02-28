part 'join_with_commas.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  final errs = <String>[];
  
  try {
    final value = joinWithCommas(1);
    
    if (value != '1') {
      errs.add('Tried calling joinWithCommas(1) and got $value instead of the expected (\'1\').'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to call joinWithCommas but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried calling joinWithCommas(1), but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3);
    
    if (value != '1,2,3') {
      errs.add('Tried calling joinWithCommas(1, 2, 3) and got $value instead of the expected (\'1,2,3\').'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to call joinWithCommas but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried calling joinWithCommas(1, 2 ,3), but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);
    
    if (value != '1,2,3,4,5') {
      errs.add('Tried calling joinWithCommas(1, 2, 3, 4, 5) and got $value instead of the expected (\'1,2,3,4,5\').'); 
    } 
  } on UnimplementedError {
    _result(false, ['Tried to call joinWithCommas but failed. Did you implement the method?']);
    return;
  } catch (e) {
    _result(false, ['Tried calling stringify(1, 2, 3, 4 ,5), but encountered an exception: ${e.runtimeType}.']);
    return;
  }

  if (errs.isEmpty) {
    _result(true);
  } else {
    _result(false, errs);
  }
}