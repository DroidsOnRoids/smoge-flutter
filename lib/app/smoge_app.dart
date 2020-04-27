import 'package:flutter/material.dart';
import 'package:smoge/app/app_theme.dart';

import 'package:smoge/ui/home/home_page.dart';
import 'package:smoge/ui/measuring_points/measuring_points_page.dart';
import 'package:smoge/ui/route/route_page.dart';
import 'package:smoge/ui/settings/settings_page.dart';
import 'package:smoge/ui/tab_bar/navigation_container.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';

class SmogeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: AppThemeDataFactory.prepareThemeData(),
        home: NavigationContainer(),
      );
}
