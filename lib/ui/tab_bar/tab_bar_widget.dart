import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smoge/ui/tab_bar/menu_button_widget.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';
import 'package:smoge/ui/tab_bar/tab_button_widget.dart';

abstract class _Constants {
  static const animationDuration = Duration(milliseconds: 300);
}

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({this.onTabChange});

  final Function(NavigationTab) onTabChange;

  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  bool _areButtonsVisible;

  @override
  void initState() {
    super.initState();

    _areButtonsVisible = false;
  }

  @override
  Widget build(BuildContext context) => Stack(
    alignment: Alignment.bottomRight,
    children: <Widget>[
      AnimatedPositioned(
        duration: _Constants.animationDuration,
        right: _areButtonsVisible ? 75.0 : 65.0,
        height: 60.0,
        child: AnimatedOpacity(
          duration: _Constants.animationDuration,
          opacity: _areButtonsVisible ? 1.0 : 0.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: NavigationTab.values.map((tab) => TabButtonWidget(
              tab: tab,
              onPressed: () => _tabDidTap(tab),
            )).toList(),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: MenuButtonWidget(
          onPressed: _menuDidTap,
          isSelected: _areButtonsVisible,
        ),
      ),
    ],
  );

  void _menuDidTap(bool isSelected) {
    setState(() => _areButtonsVisible = isSelected);
  }

  void _tabDidTap(NavigationTab tab) {
    setState(() => _areButtonsVisible = false);
    widget.onTabChange?.call(tab);
  }
}