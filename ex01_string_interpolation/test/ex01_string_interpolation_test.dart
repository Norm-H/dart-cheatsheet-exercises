// import 'package:ex01_string_interpolation/ex01_string_interpolation.dart';
import 'package:test/test.dart';


void main() {
  test('.split() splits the string on the delimiter', () {
    expect('foo,bar,baz', allOf([
      contains('foo'),
      isNot(startsWith('bar')),
      endsWith('baz')
    ]));
  });
  test('Squared value is not a number', () {  
    expect(5, allOf([
      isNotNaN,
      isPositive,
    ]));
  });
}