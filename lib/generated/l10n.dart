// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class Strings {
  Strings();
  
  static Strings current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      Strings.current = Strings();
      
      return Strings.current;
    });
  } 

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Walking`
  String get activityWalking {
    return Intl.message(
      'Walking',
      name: 'activityWalking',
      desc: 'Walking activity',
      args: [],
    );
  }

  /// `Running`
  String get activityRunning {
    return Intl.message(
      'Running',
      name: 'activityRunning',
      desc: '',
      args: [],
    );
  }

  /// `Biking`
  String get activityBiking {
    return Intl.message(
      'Biking',
      name: 'activityBiking',
      desc: '',
      args: [],
    );
  }

  /// `Wroclaw`
  String get exampleCityName {
    return Intl.message(
      'Wroclaw',
      name: 'exampleCityName',
      desc: '',
      args: [],
    );
  }

  /// `norm`
  String get airQualityNorm {
    return Intl.message(
      'norm',
      name: 'airQualityNorm',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Could not download pollution data`
  String get pollutionDataDownloadError {
    return Intl.message(
      'Could not download pollution data',
      name: 'pollutionDataDownloadError',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get connectionError {
    return Intl.message(
      'No internet connection',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again.`
  String get unsuccessfulResponseError {
    return Intl.message(
      'Something went wrong, please try again.',
      name: 'unsuccessfulResponseError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknownError {
    return Intl.message(
      'Unknown error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Measuring points`
  String get measuringPoints {
    return Intl.message(
      'Measuring points',
      name: 'measuringPoints',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Find best route`
  String get findBestRoute {
    return Intl.message(
      'Find best route',
      name: 'findBestRoute',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String percentage(Object value) {
    return Intl.message(
      '$value%',
      name: 'percentage',
      desc: '',
      args: [value],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}