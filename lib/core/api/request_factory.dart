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

  Future<Result<dynamic>> getRequest(String path) async {
    final Future<http.Response> futureResponse = http.get(baseUrl + path);

    try {
      final response = await futureResponse.timeout(_Constants.timeoutDuration);

      switch (response.statusCode) {
        case 200:
          if (response.body.isEmpty) {
            return Result<dynamic>.error(EmptyResponseError());
          } else {
            return Result<dynamic>.value(json.decode(utf8.decode(response.bodyBytes)));
          }
          break;
        case 400:
          return Result<dynamic>.error(BadRequestError());
        case 500:
          return Result<dynamic>.error(ServerError());
        default:
          return Result<dynamic>.error(UnknownError());
      }
    } on TimeoutException {
      return Result<dynamic>.error(TimeoutError());
    } on SocketException {
      return Result<dynamic>.error(ConnectionError());
    } on Exception catch (error) {
      return Result<dynamic>.error(UnknownError('$error'));
    }
  }
}
