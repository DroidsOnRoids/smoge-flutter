import 'package:flutter/material.dart';
import 'package:smoge/generated/l10n.dart';

class MeasuringPointsPage extends StatelessWidget {
  const MeasuringPointsPage();

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text(S.of(context).measuringPoints)],
      );
}
