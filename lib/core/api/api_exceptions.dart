class ApiException implements Exception {
  final _prefix;
  final _message;

  ApiException([this._prefix, this._message]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends ApiException {
  FetchDataException([String message]) : super("Communication error: ", message);
}

class BadRequestException extends ApiException {
  BadRequestException([message]) : super("Invalid request: ", message);
}

class InvalidInputException extends ApiException {
  InvalidInputException([String message]) : super("Invalid input: ", message);
}
