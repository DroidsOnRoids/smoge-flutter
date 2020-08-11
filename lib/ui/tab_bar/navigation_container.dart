import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smoge/domain/provider/pollution/pollution_provider_model.dart';
import 'package:smoge/domain/provider/provider_widget.dart';
import 'package:smoge/ui/directions/directions_page.dart';
import 'package:smoge/ui/home/home_page.dart';
import 'package:smoge/ui/measuring_points/measuring_points_page.dart';
import 'package:smoge/ui/settings/settings_page.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';
import 'package:smoge/ui/tab_bar/tab_bar_widget.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer();

  @override
  State<StatefulWidget> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer>
    with SingleTickerProviderStateMixin {
  final Map<NavigationTab, Widget> _pages = {
    NavigationTab.home: ProviderWidget<PollutionProviderModel>(
        HomePage(), (BuildContext context) => PollutionProviderModel.build()),
    NavigationTab.measuringPoints: MeasuringPointsPage(),
    NavigationTab.directions: DirectionsPage(),
    NavigationTab.settings: SettingsPage()
  };

  NavigationTab _selectedTab;
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _selectedTab = NavigationTab.home;
    _controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBody: true,
        bottomNavigationBar: TabBarWidget(
          onTabChange: _tabDidChange,
          onBackPressed: _backDidTap,
        ),
        body: FadeTransition(opacity: _animation, child: _pages[_selectedTab]),
      );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _tabDidChange(NavigationTab tab) {
    setState(() {
      _selectedTab = tab;
      _reanimateContent();
    });
  }

  void _backDidTap() {
    setState(() {
      _selectedTab = NavigationTab.home;
      _reanimateContent();
    });
  }

  void _reanimateContent() {
    _controller.reset();
    _controller.forward();
  }
}
