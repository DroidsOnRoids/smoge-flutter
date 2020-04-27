import 'package:flutter/material.dart';

enum NavigationTab { home, measuringPoints, settings, directions }

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
