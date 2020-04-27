import 'package:flutter/material.dart';

abstract class Decorations {
  static buttonContainerDecoration(BuildContext context) => BoxDecoration(
        color: Theme.of(context).buttonColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).buttonColor.withAlpha(60),
            blurRadius: 24.0,
            offset: Offset(0, 15),
          )
        ],
      );
}
