import 'package:flutter/material.dart';
import 'package:smoge/ui/home/home_page.dart';
import 'package:smoge/ui/measuring_points/measuring_points_page.dart';
import 'package:smoge/ui/route/route_page.dart';
import 'package:smoge/ui/settings/settings_page.dart';

enum NavigationTab {
  home, measuringPoints, settings, directions
}

extension NavigationTabsIcons on NavigationTab {
  Icon get icon {
    switch (this) {
      case NavigationTab.home:
        return Icon(Icons.home);
      case NavigationTab.measuringPoints:
        return Icon(Icons.pin_drop);
      case NavigationTab.settings:
        return Icon(Icons.settings);
      case NavigationTab.directions:
        return Icon(Icons.directions);
    }

    throw Exception("NavigationTab.icon - Unsatisfied switch cases");
  }
}