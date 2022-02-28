part of 'ex11_exceptions.dart';

/// Instructions:
/// Implement tryFunction() below. It should execute an untrustworthy method and then do 
/// the following:

/// If untrustworthy() throws an ExceptionWithMessage, call logger.logException with the 
/// exception type and message (try using on and catch).
/// If untrustworthy() throws an Exception, call logger.logException with the exception 
/// type (try using on for this one).
/// If untrustworthy() throws any other object, don’t catch the exception.
/// After everything’s caught and handled, call logger.doneLogging (try using finally).
typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception. Catch and handle
  // them using try-on-catch-finally.
  try {
    untrustworthy();
  } on ExceptionWithMessage catch(e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception catch(e) {
    logger.logException(e.runtimeType);
  } finally {
    logger.doneLogging();
  }
}