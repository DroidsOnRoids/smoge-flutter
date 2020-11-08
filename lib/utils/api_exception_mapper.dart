import 'package:flutter/cupertino.dart';
import 'package:smoge/data/api/api_exception.dart';
import 'package:smoge/generated/l10n.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(BuildContext context, Object error) {
    if (error is ApiException) {
      if (error is ConnectionException) {
        return Strings.of(context).connectionError;
      } else {
        return Strings.of(context).serverError;
      }
    } else {
      return Strings.of(context).unknownError;
    }
  }
}
