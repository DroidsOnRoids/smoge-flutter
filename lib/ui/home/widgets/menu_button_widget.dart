import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class _Constants {
  static const double height = 45.0;
  static const int animationDuration = 200;
}

class MenuButtonWidget extends StatefulWidget {
  const MenuButtonWidget({
    Key key,
    this.onPressed,
    this.isSelected = false
  })  : assert(isSelected != null),
        super(key: key);

  final Function(bool) onPressed;
  final bool isSelected;

  @override
  State<StatefulWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget>
    with SingleTickerProviderStateMixin {
  bool _isSelected;
  double _rightPadding;
  AnimationController _animationController;

  @override
  void initState() {
    _isSelected = widget.isSelected;
    _rightPadding = 0.0;
    _animationController = AnimationController(
        duration: Duration(milliseconds: _Constants.animationDuration * 2),
        vsync: this
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      Container(
        height: _Constants.height,
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_Constants.height / 2),
            bottomLeft: Radius.circular(_Constants.height / 2)
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).buttonColor.withAlpha(150),
              blurRadius: 15.0,
              offset: Offset(0, 8),
            )
          ]
        ),
        child: AnimatedPadding(
          padding: EdgeInsets.only(right: _rightPadding),
          duration: Duration(milliseconds: _Constants.animationDuration),
          curve: _rightPadding == 0.0 ? Curves.easeOutQuint : Curves.linear,
          onEnd: () { setState(() { _rightPadding = 0.0; }); },
          child: IconButton(
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _animationController,
            ),
            color: Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: _handlePress,
          ),
        ),
      );

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  void _handlePress() {
    setState(() {
      _isSelected = _isSelected ? false : true;
      _rightPadding = _isSelected ? 50.0 : 0.0;
      if (_isSelected) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
      if (widget.onPressed != null) {
        widget.onPressed(_isSelected);
      }
    });
  }
}