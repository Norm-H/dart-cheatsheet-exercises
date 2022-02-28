part of 'ex08_getters_and_setters.dart';
/// Instructions:
/// Imagine you have a shopping cart class that keeps a private List<double> of prices. 
/// Add the following:

///   A getter called total that returns the sum of the prices
///   A setter that replaces the list with a new one, as long as the new list doesn’t 
///   contain any negative prices (in which case the setter should throw an 
///   InvalidPriceException).

/// Ignore all initial errors in the DartPad.

class ShoppingCart {
  List<double> _prices = [];
  
  // Add a "total" getter here:
  double get total => _prices.fold(0,(a,b) => a + b);

  // Add a "prices" setter here:
  set prices(List<double> newPrices) {
    if(newPrices.any((price) => price < 0)) {
      throw InvalidPriceException();
    }
    _prices = [...newPrices];
  }
}

class InvalidPriceException {}