abstract class ApiException implements Exception {}

class ConnectionException extends ApiException {}

class UnsuccessfulResponseException extends ApiException {}
