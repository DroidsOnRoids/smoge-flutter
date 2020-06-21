import 'package:flutter/cupertino.dart';
import 'package:smoge/app/strings.dart';
import 'package:smoge/data/api/api_exception.dart';

abstract class ApiExceptionMapper {
  static String toErrorMessage(Object error, BuildContext context) {
    if (error is ApiException) {
      if (error is UnauthorizedException) {
        return Strings.authorizationError;
      } else if (error is ConnectionException) {
        return Strings.connectionError;
      } else if (error is ResourceNotFoundException) {
        return Strings.resourceNotFoundError;
      } else if (error is ServerErrorException) {
        return Strings.internalServerError;
      } else {
        return Strings.unknownError;
      }
    } else {
      return Strings.unknownError;
    }
  }
}
