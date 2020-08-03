import 'package:flutter/material.dart';

class ProviderModel<T> extends ChangeNotifier {
  ProviderModel(T initialValue) : _value = initialValue;

  T get value => _value;
  final T _value;
}
