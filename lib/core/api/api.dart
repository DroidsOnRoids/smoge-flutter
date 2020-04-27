import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'api_errors.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

const String BASE_URL = "http://api.gios.gov.pl/pjp-api/rest/";
const Duration TIMEOUT_DURATION = Duration(seconds: 15);

abstract class API {
  Future<Result<T>> getRequest<T>(String url) async {
    final Future<http.Response> futureResponse = http.get(BASE_URL + url);

    try {
      final response = await futureResponse.timeout(TIMEOUT_DURATION);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isNotEmpty) {
          return Result<T>.value(json.decode(utf8.decode(response.bodyBytes)));
        } else {
          return Result<T>.error(EmptyResponseError());
        }
      }

      switch (response.statusCode) {
        case 400:
          return Result<T>.error(FetchDataError());
        case 500:
          return Result<T>.error(BadRequestError());
        default:
          return Result<T>.error(UnknownError());
      }
    } on TimeoutException {
      return Result<T>.error(TimeoutError());
    } on SocketException {
      return Result<T>.error(ConnectionError());
    } on Exception catch (error) {
      return Result<T>.error(UnknownError(error.toString()));
    }
  }
}
