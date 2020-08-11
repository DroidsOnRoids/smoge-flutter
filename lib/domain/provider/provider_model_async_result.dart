import 'dart:ui';

import 'package:async/async.dart';

class ProviderModelAsyncResult<T> {
  Future<void> set(
      Future<Result<T>> futureResult, VoidCallback isLoadingChanged) async {
    isLoading = true;

    result = await futureResult;

    isLoading = false;
    isLoadingChanged();
  }

  bool get hasData => !isLoading || result != null;

  Result<T> result;
  bool isLoading = false;
}
