import 'package:flutter/material.dart';
import 'package:smoge/generated/l10n.dart';

class DirectionsPage extends StatelessWidget {
  const DirectionsPage();

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text(Strings.of(context).findBestRoute)],
      );
}
