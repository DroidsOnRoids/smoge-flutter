import 'package:flutter/material.dart';
import 'package:smoge/app/app_colors.dart';

class AppThemeDataFactory {
  static ThemeData prepareThemeData() => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        accentColor: AppColors.textPrimary,
        backgroundColor: AppColors.background,
        fontFamily: "Roboto",
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
          subtitle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          subhead: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          body1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      );
}
