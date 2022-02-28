part of 'ex13_initializer_lists.dart';

/// Instructions:
/// Complete the FirstTwoLetters constructor below. Use an initializer list to assign 
/// the first two characters in word to the letterOne and LetterTwo properties. For 
/// extra credit, add an assert to catch words of less than two characters.

/// Ignore all initial errors in the DartPad.
class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // Create a constructor with an initializer list here:
  FirstTwoLetters(String word)
    : letterOne = word[0], 
      letterTwo = word[1],
      assert(word.length > 2);
          
}