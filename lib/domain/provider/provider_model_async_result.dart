import 'dart:ui';

import 'package:async/async.dart';

class ProviderModelAsyncResult<T> {
  Future<void> set(
      Future<Result<T>> futureResult, VoidCallback isLoadingChanged) async {
    _isLoading = true;

    result = await futureResult;

    _isLoading = false;
    isLoadingChanged();
  }

  bool get hasData => !_isLoading || result != null;

  Result<T> result;
  bool _isLoading = false;
}
