import 'package:flutter/material.dart';
import 'package:smoge/app/app_constants.dart';
import 'package:smoge/ui/tab_bar/buttons/back_button_widget.dart';
import 'package:smoge/ui/tab_bar/buttons/menu_button_widget.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';
import 'package:smoge/ui/tab_bar/buttons/tab_button_widget.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({this.onTabChange, this.onBackPressed});

  final Function(NavigationTab) onTabChange;
  final VoidCallback onBackPressed;

  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  bool _areButtonsVisible;
  bool _isBackButtonVisible;

  @override
  void initState() {
    super.initState();

    _areButtonsVisible = false;
    _isBackButtonVisible = false;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 45.0),
        child: Stack(
          overflow: Overflow.visible,
          alignment: AlignmentDirectional.bottomEnd,
          children: <Widget>[
            AnimatedPositionedDirectional(
              duration: AppConstants.animationDuration,
              end: _areButtonsVisible ? 75.0 : 65.0,
              height: 60.0,
              child: AnimatedOpacity(
                duration: AppConstants.animationDuration,
                opacity: _areButtonsVisible ? 1.0 : 0.0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: NavigationTab.values
                      .where((tab) => tab != NavigationTab.home)
                      .map((tab) => TabButtonWidget(
                            tab: tab,
                            onPressed: () => _tabDidTap(tab),
                          ))
                      .toList(),
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
            AnimatedPositionedDirectional(
              duration: AppConstants.animationDuration,
              start: _isBackButtonVisible ? 0.0 : -50.0,
              curve: Curves.easeInOut,
              child: BackButtonWidget(
                onPressed: _backDidTap,
              ),
            )
          ],
        ),
      );

  void _menuDidTap(bool isSelected) {
    setState(() => _areButtonsVisible = isSelected);
  }

  void _tabDidTap(NavigationTab tab) {
    if (_areButtonsVisible) {
      setState(() {
        _areButtonsVisible = false;
        _isBackButtonVisible = true;
      });
      widget.onTabChange?.call(tab);
    }
  }

  void _backDidTap() {
    setState(() => _isBackButtonVisible = false);
    widget.onBackPressed?.call();
  }
}
