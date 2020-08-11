import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:http/http.dart';
import 'package:smoge/data/api/api_exception.dart';

class HttpClient {
  HttpClient._privateConstructor();

  static final HttpClient _instance = HttpClient._privateConstructor();

  factory HttpClient() {
    return _instance;
  }

  Future<Result<dynamic>> getRequest(String path) async {
    Response response;

    try {
      response = await get(path);
      final statusCode = response.statusCode;
      if (statusCode >= 200 && statusCode < 299) {
        if (response.body.isEmpty) {
          return Result<dynamic>.value(null);
        } else {
          return Result<dynamic>.value(jsonDecode(response.body));
        }
      } else if (statusCode >= 400 && statusCode < 500) {
        return Result<dynamic>.error(ClientErrorException());
      } else if (statusCode >= 500 && statusCode < 600) {
        return Result<dynamic>.error(ServerErrorException());
      } else {
        return Result<dynamic>.error(UnknownException());
      }
    } on SocketException {
      return Result<dynamic>.error(ConnectionException());
    }
  }
}
