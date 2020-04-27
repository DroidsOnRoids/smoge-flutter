import 'package:flutter/material.dart';
import 'package:smoge/ui/tab_bar/navigation_tab.dart';
import 'package:smoge/utils/decorations.dart';

abstract class _Constants {
  static const size = 45.0;
}

class TabButtonWidget extends StatefulWidget {
  const TabButtonWidget({@required this.tab, this.onPressed})
    :   assert(tab != null);

  final NavigationTab tab;
  final VoidCallback onPressed;

  @override
  State<StatefulWidget> createState() => _TabButtonWidgetState();
}

class _TabButtonWidgetState extends State<TabButtonWidget> {
  Alignment _alignment;

  @override
  void initState() {
    super.initState();

    _alignment = Alignment.bottomRight;
  }

  @override
  Widget build(BuildContext context) => AnimatedAlign(
    duration: Duration(milliseconds: 150),
    alignment: _alignment,
    curve: Curves.easeInOut,
    onEnd: _animationDidEnd,
    child: Container(
      margin: EdgeInsets.only(left: 25.0),
      height: _Constants.size,
      width: _Constants.size,
      decoration: Decorations.buttonContainerDecoration(context).copyWith(
        borderRadius: BorderRadius.circular(_Constants.size / 2)
      ),
      child: IconButton(
        icon: widget.tab.icon,
        color: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () => setState(() => _alignment = Alignment.topRight),
      ),
    ),
  );

  void _animationDidEnd() {
    if (_alignment == Alignment.bottomRight) {
      widget.onPressed?.call();
    } else {
      setState(() => _alignment = Alignment.bottomRight);
    }
  }
}