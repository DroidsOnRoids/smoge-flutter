import 'package:flutter/material.dart';
import 'package:smoge/app/app_colors.dart';

class AppThemeDataFactory {
  static ThemeData prepareThemeData() => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        accentColor: AppColors.textPrimary,
        backgroundColor: AppColors.background,
        buttonColor: AppColors.buttonColor,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
          subtitle2: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          subtitle1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      );
}
