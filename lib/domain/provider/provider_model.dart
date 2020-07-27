import 'package:flutter/material.dart';
import 'package:smoge/domain/provider/provider_model_state.dart';

class ProviderModel<T, Y extends Exception> extends ChangeNotifier {
  T get value => _value;

  Y get error => _error;

  ProviderModelState get state => _state;

  void pushNextValue(T value) {
    _state = ProviderModelState.value;
    _value = value;
    _error = null;

    notifyListeners();
  }

  void pushNextError(Y error) {
    _state = ProviderModelState.error;
    _error = error;

    notifyListeners();
  }

  T _value;
  Y _error;
  ProviderModelState _state = ProviderModelState.none;
}
