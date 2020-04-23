import 'package:flutter/material.dart';

enum NavigationTab {
  home, map, settings
}

extension NavigationTabsIcons on NavigationTab {
  Icon get icon {
    switch (this) {
      case NavigationTab.home:
        return Icon(Icons.home);
      case NavigationTab.map:
        return Icon(Icons.pin_drop);
      case NavigationTab.settings:
        return Icon(Icons.settings);
    }

    return null;
  }
}