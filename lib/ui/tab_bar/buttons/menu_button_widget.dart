import 'package:flutter/material.dart';
import 'package:smoge/utils/decorations.dart';

abstract class _Constants {
  static const double height = 45.0;
  static const double cornerRadius = height / 2;
  static const int animationDuration = 200;
}

class MenuButtonWidget extends StatefulWidget {
  const MenuButtonWidget({Key key, this.onPressed, this.isSelected = false})
      : assert(isSelected != null),
        super(key: key);

  final Function(bool) onPressed;
  final bool isSelected;

  @override
  State<StatefulWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget>
    with SingleTickerProviderStateMixin {
  bool _isSelected;
  double _endPadding;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _isSelected = widget.isSelected;
    _endPadding = 0.0;
    _animationController = AnimationController(
        duration: Duration(milliseconds: _Constants.animationDuration * 2),
        vsync: this);
  }

  @override
  Widget build(BuildContext context) => Container(
        height: _Constants.height,
        decoration: Decorations.buttonContainerDecoration(context).copyWith(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(_Constants.cornerRadius),
              bottomStart: Radius.circular(_Constants.cornerRadius)),
        ),
        child: AnimatedPadding(
          padding: EdgeInsetsDirectional.only(end: _endPadding),
          duration: Duration(milliseconds: _Constants.animationDuration),
          curve: _endPadding == 0.0 ? Curves.easeOutQuint : Curves.linear,
          onEnd: _paddingAnimationDidEnd,
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
  void didUpdateWidget(MenuButtonWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    _isSelected = widget.isSelected;
    _isSelected
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _handlePress() {
    setState(() {
      _isSelected = !_isSelected;
      _endPadding = _isSelected ? 50.0 : 0.0;
      if (_isSelected) {
        _animationController.forward();
      } else {
        _animationController.reverse();
        widget.onPressed?.call(_isSelected);
      }
    });
  }

  void _paddingAnimationDidEnd() {
    if (_endPadding != 0.0) {
      setState(() => _endPadding = 0.0);
      widget.onPressed?.call(_isSelected);
    }
  }
}
