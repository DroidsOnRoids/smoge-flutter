import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoge/app/app_icons.dart';
import 'package:smoge/app/strings.dart';
import 'package:smoge/domain/error/smoge_error.dart';
import 'package:smoge/domain/provider/pollution/pollution_provider_model.dart';
import 'package:smoge/ui/home/widgets/activities/activities_widget.dart';
import 'package:smoge/ui/home/widgets/activities/activity_widget.dart';
import 'package:smoge/ui/home/widgets/animated_percentage_widget.dart';
import 'package:smoge/ui/home/widgets/video_player_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    Provider.of<PollutionProviderModel>(context).getFirstStation();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          VideoPlayerWidget(videoPath: 'assets/videos/fog.mp4'),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildTitle(),
                _buildExpandedContent(context),
                _buildActivitiesWidget(),
              ],
            ),
          ),
        ],
      );

  Widget _buildTitle() => Text(
        Strings.exampleCityName,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      );

  Widget _buildExpandedContent(BuildContext context) => Expanded(
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: _buildStationName()),
            AnimatedPercentageWidget(
              fromValue: 0,
              toValue: 310,
            ),
            Text(Strings.airQualityNorm,
                style: Theme.of(context).textTheme.subtitle2),
            _buildDetailsWidget(),
          ],
        ),
      );

  Widget _buildStationName() {
    final firstStation = context
        .select((PollutionProviderModel model) => model.value.firstStation);

    if (!firstStation.hasData || firstStation.isLoading) {
      return CircularProgressIndicator();
    }

    if (firstStation.result.isValue) {
      return Text('${firstStation.result.asValue.value.stationName}');
    } else if (firstStation.result.isError) {
      return Text((firstStation.result.asError.error as SmogeError).title);
    } else {
      return CircularProgressIndicator();
    }
  }

  Widget _buildDetailsWidget() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(opacity: 0.5, child: Text(Strings.details)),
            SizedBox(height: 5),
            Image.asset(AppIcons.arrowDown, width: 7, height: 7),
          ],
        ),
      );

  Widget _buildActivitiesWidget() => Padding(
        padding: EdgeInsets.only(bottom: 25),
        child: ActivitiesWidget(
          activities: {
            ActivityType.walking: ActivityQuality.good,
            ActivityType.running: ActivityQuality.bad,
            ActivityType.biking: ActivityQuality.bad,
          },
        ),
      );
}
