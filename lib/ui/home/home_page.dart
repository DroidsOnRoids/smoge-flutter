import 'package:flutter/material.dart';
import 'package:smoge/ui/home/widgets/activities/activities_widget.dart';
import 'package:smoge/ui/home/widgets/activities/activity_widget.dart';
import 'package:smoge/ui/home/widgets/animated_percentage_widget.dart';
import 'package:smoge/ui/home/widgets/video_player_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Stack(
    children: <Widget>[
      VideoPlayerWidget(videoPath: "assets/videos/fog.mp4"),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTitle(),
            _buildExpandedContent(),
            _buildActivitiesWidget(),
          ],
        ),
      ),
    ],
  );

  Widget _buildTitle() => Text(
        "Wroclaw",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subhead,
      );

  Widget _buildAirPollutionContent() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedPercentageWidget(
            fromValue: 0,
            toValue: 310,
          ),
          Text(
            "norm",
            style: Theme.of(context).textTheme.subtitle,
          ),
        ],
      );

  Widget _buildActivitiesWidget() => Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: ActivitiesWidget(
          activities: {
            ActivityType.walking: ActivityQuality.good,
            ActivityType.running: ActivityQuality.bad,
            ActivityType.biking: ActivityQuality.bad,
          },
        ),
      );

  Widget _buildDetailsWidget() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: 0.5,
              child: Text(
                "Details",
                style: Theme.of(context).textTheme.body1,
              ),
            ),
            SizedBox(height: 5),
            Image.asset("assets/images/icon_arrow_down.png",
                width: 7, height: 7),
          ],
        ),
      );

  Widget _buildExpandedContent() => Expanded(
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            _buildAirPollutionContent(),
            _buildDetailsWidget(),
          ],
        ),
      );
}
