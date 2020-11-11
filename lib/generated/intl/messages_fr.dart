// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static m0(value) => "${value}%";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "activityBiking" : MessageLookupByLibrary.simpleMessage("Faire du vélo"),
    "activityRunning" : MessageLookupByLibrary.simpleMessage("Courir"),
    "activityWalking" : MessageLookupByLibrary.simpleMessage("Marcher"),
    "airQualityNorm" : MessageLookupByLibrary.simpleMessage("normal"),
    "connectionError" : MessageLookupByLibrary.simpleMessage("Pas de connexion Internet"),
    "details" : MessageLookupByLibrary.simpleMessage("Détails"),
    "exampleCityName" : MessageLookupByLibrary.simpleMessage("Wrocław"),
    "findBestRoute" : MessageLookupByLibrary.simpleMessage("Trouver le meilleur itinéraire"),
    "measuringPoints" : MessageLookupByLibrary.simpleMessage("Points de mesure"),
    "percentage" : m0,
    "pollutionDataDownloadError" : MessageLookupByLibrary.simpleMessage("Impossible de télécharger les données de pollution"),
    "settings" : MessageLookupByLibrary.simpleMessage("Paramètres"),
    "unknownError" : MessageLookupByLibrary.simpleMessage("Erreur inconnue"),
    "unsuccessfulResponseError" : MessageLookupByLibrary.simpleMessage("Quelque chose s\'est mal passé, veuillez réessayer plus tard.")
  };
}
