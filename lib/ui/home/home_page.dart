import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smoge/app/app_icons.dart';
import 'package:smoge/ui/home/activities_widget.dart';

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
              Text(
                "Wroclaw",
                style: Theme.of(context).textTheme.subhead,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    Text("210%", style: Theme.of(context).textTheme.title),
                    Text("norm", style: Theme.of(context).textTheme.subtitle),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Details"),
                          SizedBox(height: 10),
                          Image.asset(AppIcons.run, width: 10, height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildActivitiesWidget(),
            ],
          ),
        ),
      );

  Widget _buildActivitiesWidget() => ActivitiesWidget(
        runningQuality: ActivityQuality.good,
        walkingQuality: ActivityQuality.good,
        bikingQuality: ActivityQuality.good,
      );
}
