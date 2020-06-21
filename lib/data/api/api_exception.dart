class ApiException implements Exception {}

class UnauthorizedException extends ApiException {}

class ConnectionException extends ApiException {}

class ServerErrorException extends ApiException {}

class ResourceNotFoundException extends ApiException {}

class UnknownException extends ApiException {}
