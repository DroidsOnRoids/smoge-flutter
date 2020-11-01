import 'package:flutter/material.dart';
import 'package:smoge/generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(S.of(context).settings)],
        ),
      );
}
