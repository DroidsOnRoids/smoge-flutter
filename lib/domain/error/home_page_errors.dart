import 'package:smoge/domain/error/smoge_error.dart';

class PollutionDataDownloadError implements SmogeError {
  @override
  String get title => 'Something went wrong while downloading pollution data';
}
