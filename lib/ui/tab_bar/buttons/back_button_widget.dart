import 'package:flutter/material.dart';
import 'package:smoge/utils/decorations.dart';

abstract class _Constants {
  static const double height = 45.0;
  static const double cornerRadius = height / 2;
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Container(
    height: _Constants.height,
    decoration: Decorations.buttonContainerDecoration(context).copyWith(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(_Constants.cornerRadius),
          bottomRight: Radius.circular(_Constants.cornerRadius)
      ),
    ),
    child: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => onPressed?.call(),
    ),
  );
}