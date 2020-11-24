import 'package:flutter/cupertino.dart';
import 'package:smoge/data/api/api_exception.dart';
import 'package:smoge/generated/l10n.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(BuildContext context, Object error) {
    if (error is ApiException) {
      if (error is ConnectionException) {
        return Strings.of(context).connectionError;
      } else if (error is UnsuccessfulResponseException) {
        return Strings.of(context).unsuccessfulResponseError;
      }
    }
    return Strings.of(context).unknownError;
  }
}
