import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smoge/ui/home/home_page.dart';
import 'package:smoge/ui/measuring_points/measuring_points_page.dart';
import 'package:smoge/ui/directions/direcations_page.dart';
import 'package:smoge/ui/settings/settings_page.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';
import 'package:smoge/ui/tab_bar/tab_bar_widget.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer();

  @override
  State<StatefulWidget> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  final Map<NavigationTab, Widget> _pages = {
    NavigationTab.home: HomePage(),
    NavigationTab.measuringPoints: MeasuringPointsPage(),
    NavigationTab.directions: DirectionsPage(),
    NavigationTab.settings: SettingsPage()
  };

  NavigationTab _selectedTab;

  @override
  void initState() {
    super.initState();

    _selectedTab = NavigationTab.home;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: TabBarWidget(
          onTabChange: (tab) => setState(() => _selectedTab = tab),
          onBackPressed: () =>
              setState(() => _selectedTab = NavigationTab.home),
        ),
        body: _pages[_selectedTab],
      );
}
