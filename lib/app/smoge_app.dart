import 'package:flutter/material.dart';
import 'package:smoge/app/app_theme.dart';
import 'package:smoge/generated/l10n.dart';
import 'package:smoge/ui/tab_bar/navigation_container.dart';

class SmogeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        localizationsDelegates: [S.delegate],
        supportedLocales: S.delegate.supportedLocales,
        theme: AppThemeDataFactory.prepareThemeData(),
        home: NavigationContainer(),
      );
}
