library getters_and_setters;
part 'shopping_cart.dart';

void test() {
  const pass = 'All tests passed!';
  void _result(bool test, [List<String>?fail]) =>  print(test ? pass : fail?.join('\n'));
  var foundException = false;
    
  try {
    final cart = ShoppingCart();
    cart.prices = [12.0, 12.0, -23.0];
  } on InvalidPriceException {
    foundException = true;
  } catch (e) {
    _result(false, ['Tried setting a negative price and received a ${e.runtimeType} instead of an InvalidPriceException.']);
    return;
  }
  
  if (!foundException) {
    _result(false, ['Tried setting a negative price and didn\'t get an InvalidPriceException.']);
    return;
  }
  
  final secondCart = ShoppingCart();
  
  try {
    secondCart.prices = [1.0, 2.0, 3.0];
  } catch(e) {
    _result(false, ['Tried setting prices with a valid list, but received an exception: ${e.runtimeType}.']);
    return;
  }
  
  if (secondCart._prices.length != 3) {
    _result(false, ['Tried setting prices with a list of three values, but _prices ended up having length ${secondCart._prices.length}.']);
    return;
  }

  if (secondCart._prices[0] != 1.0 || secondCart._prices[1] != 2.0 || secondCart._prices[2] != 3.0) {
    final vals = secondCart._prices.map((p) => p.toString()).join(', ');
    _result(false, ['Tried setting prices with a list of three values (1, 2, 3), but incorrect ones ended up in the price list ($vals) .']);
    return;
  }
  
  var sum = 0.0;
  
  try {
    sum = secondCart.total;
  } catch (e) {
    _result(false, ['Tried to get total, but received an exception: ${e.runtimeType}.']);
    return;
  }
  
  if (sum != 6.0) {
    _result(false, ['After setting prices to (1, 2, 3), total returned $sum instead of 6.']);
    return;
  }
  
  _result(true);
}

class InitialInvalidPriceException {}