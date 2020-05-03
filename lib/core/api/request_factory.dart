import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'api_errors.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

abstract class _Constants {
  static const Duration timeoutDuration = Duration(seconds: 15);
}

class RequestFactory {
  final String baseUrl;

  RequestFactory(this.baseUrl);

  Future<Result<T>> getRequest<T>(String path) async {
    final Future<http.Response> futureResponse = http.get(baseUrl + path);

    try {
      final response = await futureResponse.timeout(_Constants.timeoutDuration);

      switch (response.statusCode) {
        case 200:
          if (response.body.isEmpty) {
            return Result<T>.error(EmptyResponseError());
          }
          return Result<T>.value(json.decode(utf8.decode(response.bodyBytes)));
        case 400:
          return Result<T>.error(BadRequestError());
        case 500:
          return Result<T>.error(ServerError());
        default:
          return Result<T>.error(UnknownError());
      }
    } on TimeoutException {
      return Result<T>.error(TimeoutError());
    } on SocketException {
      return Result<T>.error(ConnectionError());
    } on Exception catch (error) {
      return Result<T>.error(UnknownError('$error'));
    }
  }
}
