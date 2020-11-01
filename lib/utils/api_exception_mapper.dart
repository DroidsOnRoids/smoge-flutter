import 'package:smoge/app/S.of(context).dart';
import 'package:smoge/data/api/api_exception.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(Object error) {
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
