// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static m0(value) => "${value}%";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "activityBiking" : MessageLookupByLibrary.simpleMessage("Jazda na rowerze"),
    "activityRunning" : MessageLookupByLibrary.simpleMessage("Bieganie"),
    "activityWalking" : MessageLookupByLibrary.simpleMessage("Chodzenie"),
    "airQualityNorm" : MessageLookupByLibrary.simpleMessage("normalna"),
    "connectionError" : MessageLookupByLibrary.simpleMessage("Brak połączenia z internetem"),
    "details" : MessageLookupByLibrary.simpleMessage("Szczegóły"),
    "exampleCityName" : MessageLookupByLibrary.simpleMessage("Wrocław"),
    "findBestRoute" : MessageLookupByLibrary.simpleMessage("Znajdź najlepszą trasę"),
    "measuringPoints" : MessageLookupByLibrary.simpleMessage("Punkty pomiarowe"),
    "percentage" : m0,
    "pollutionDataDownloadError" : MessageLookupByLibrary.simpleMessage("Nie udało się pobrać danych o zanieczyszczeniach"),
    "settings" : MessageLookupByLibrary.simpleMessage("Ustawienia"),
    "unknownError" : MessageLookupByLibrary.simpleMessage("Nieznany błąd"),
    "unsuccessfulResponseError" : MessageLookupByLibrary.simpleMessage("Coś poszło nie tak, spróbuj ponownie później.")
  };
}
