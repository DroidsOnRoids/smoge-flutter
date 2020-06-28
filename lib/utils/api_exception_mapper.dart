import 'package:smoge/app/strings.dart';
import 'package:smoge/data/api/api_exception.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(Object error) {
    if (error is ApiException) {
      if (error is ConnectionException) {
        return Strings.connectionError;
      } else if (error is ClientErrorException) {
        return Strings.clientError;
      } else if (error is ServerErrorException) {
        return Strings.serverError;
      } else if (error is EmptyResultException) {
        return Strings.emptyResultError;
      } else {
        return Strings.unknownError;
      }
    } else {
      return Strings.unknownError;
    }
  }
}
