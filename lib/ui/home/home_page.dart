import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smoge/app/app_icons.dart';
import 'package:smoge/ui/home/widgets/activities_widget.dart';
import 'package:smoge/ui/home/widgets/animated_percentage_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildTitle(),
              _buildExpandedContent(),
              _buildActivitiesWidget(),
            ],
          ),
        ),
      );

  Widget _buildTitle() => Text(
        "Wroclaw",
        style: Theme.of(context).textTheme.subhead,
        textAlign: TextAlign.center,
      );

  Widget _buildExpandedContent() => Expanded(
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            AnimatedPercentageWidget(value: 310),
            Text("norm", style: Theme.of(context).textTheme.subtitle),
            _buildDetailsWidget(),
          ],
        ),
      );

  Widget _buildDetailsWidget() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(opacity: 0.5, child: Text("Details")),
            SizedBox(height: 5),
            Image.asset(AppIcons.arrowDown, width: 7, height: 7),
          ],
        ),
      );

  Widget _buildActivitiesWidget() => ActivitiesWidget(
        runningQuality: ActivityQuality.good,
        walkingQuality: ActivityQuality.good,
        bikingQuality: ActivityQuality.bad,
      );
}
