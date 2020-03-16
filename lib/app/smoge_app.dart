import 'package:flutter/material.dart';
import 'package:smoge/app/app_theme.dart';

import 'package:smoge/ui/home/home_page.dart';

class SmogeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: HomePage(),
        theme: AppThemeDataFactory.prepareThemeData(),
      );
}
