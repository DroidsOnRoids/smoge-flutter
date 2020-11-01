import 'package:flutter/cupertino.dart';
import 'package:smoge/data/api/api_exception.dart';
import 'package:smoge/generated/l10n.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(BuildContext context, Object error) {
    if (error is ApiException) {
      if (error is ConnectionException) {
        return S.of(context).connectionError;
      } else if (error is ClientErrorException) {
        return S.of(context).clientError;
      } else if (error is ServerErrorException) {
        return S.of(context).serverError;
      } else if (error is EmptyResultException) {
        return S.of(context).emptyResultError;
      } else {
        return S.of(context).unknownError;
      }
    } else {
      return S.of(context).unknownError;
    }
  }
}
