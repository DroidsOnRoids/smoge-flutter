import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';

class PlatformPadding extends Padding {
  const PlatformPadding(
      {Key key, this.iosPadding, this.androidPadding, Widget child})
      : assert(iosPadding != null),
        assert(androidPadding != null),
        super(key: key, padding: EdgeInsets.zero, child: child);

  final EdgeInsetsGeometry iosPadding;
  final EdgeInsetsGeometry androidPadding;

  @override
  EdgeInsetsGeometry get padding =>
      Platform.isAndroid ? androidPadding : iosPadding;
}
