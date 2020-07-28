import 'package:flutter/material.dart';

class ProviderModel<T> extends ChangeNotifier {
  ProviderModel(this._initialValue);

  T get value => _value ?? _initialValue;

  final T _initialValue;
  T _value;
}
