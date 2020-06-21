import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:smoge/data/api/api_exception.dart';

class HttpClient {
  HttpClient._privateConstructor();

  static final HttpClient _instance = HttpClient._privateConstructor();

  factory HttpClient() {
    return _instance;
  }

  Future<dynamic> getRequest(String path) async {
    Response response;

    try {
      response = await get(path);
      switch (response.statusCode) {
        case 200:
          return jsonDecode(response.body);
        case 401:
          throw UnauthorizedException();
        case 404:
          throw ResourceNotFoundException();
        case 500:
          throw ServerErrorException();
        default:
          throw UnknownException();
      }
    } on SocketException {
      throw ConnectionException();
    }
  }
}
