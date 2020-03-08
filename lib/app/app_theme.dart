import 'package:flutter/material.dart';

ThemeData appThemeData() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Color(0xFF278CFF),
      backgroundColor: Colors.white,
      fontFamily: "Roboto",
      textTheme: TextTheme(
        title: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.w500,
          color: Color(0xFF263238),
        ),
        subtitle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Color(0xFF263238),
        ),
        subhead: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xFF263238),
        ),
        body1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF263238),
        ),
      ),
    );
