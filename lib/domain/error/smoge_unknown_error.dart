import 'package:smoge/domain/error/smoge_error.dart';

class SmogeUnknownError implements SmogeError {
  @override
  String get title => 'Something went wrong';
}
