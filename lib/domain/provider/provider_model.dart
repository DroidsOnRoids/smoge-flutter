import 'package:flutter/material.dart';

class ProviderModel<T, Y extends Exception> extends ChangeNotifier {
  T get value => _value;

  Y get error => _error;

  void pushNextValue(T value) {
    _value = value;
    _error = null;

    notifyListeners();
  }

  void pushNextError(Y error) {
    _error = error;

    notifyListeners();
  }

  void setInitialValue(T value) {
    _value = value;
  }

  T _value;
  Y _error;
}
