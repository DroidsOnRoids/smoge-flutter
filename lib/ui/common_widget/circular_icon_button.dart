import 'package:flutter/material.dart';
import 'package:smoge/app/app_constants.dart';
import 'package:smoge/utils/decorations.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({@required this.icon, this.size = AppConstants.buttonSize, this.margin, this.onPressed})
    : assert(icon != null);

  final Icon icon;
  final double size;
  final EdgeInsetsGeometry margin;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Container(
    margin: margin,
    height: size,
    width: size,
    decoration: Decorations.buttonContainerDecoration(context).copyWith(
        borderRadius: BorderRadius.circular(size / 2)),
    child: IconButton(
      icon: icon,
      color: Colors.white,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => onPressed?.call(),
    ),
  );
}