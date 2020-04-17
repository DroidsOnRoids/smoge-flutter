import 'dart:convert';
import 'dart:io';
import 'api_exceptions.dart';
import 'package:http/http.dart' as http;

const String BASE_URL = "http://api.gios.gov.pl/pjp-api/rest/";

class PollutionAPI {
  Future<dynamic> get(String url) async {
    var responseJson;

    try {
      final response = await http.get(BASE_URL + url);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body.toString());
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error communicating with server, status code : ${response.statusCode}');
    }
  }
}
