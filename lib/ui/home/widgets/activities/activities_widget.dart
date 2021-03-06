import 'package:flutter/material.dart';
import 'package:smoge/ui/home/widgets/activities/activity_widget.dart';

abstract class _Constants {
  static const double itemSpacing = 20;
  static const double badgeSize = 15;
}

enum ActivityQuality { good, bad }

class ActivitiesWidget extends StatelessWidget {
  const ActivitiesWidget({
    Key key,
    this.activities,
  }) : super(key: key);

  final Map<ActivityType, ActivityQuality> activities;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildActivities(),
      );

  Widget _buildSpacing() => SizedBox(
        width: _Constants.itemSpacing - _Constants.badgeSize / 2,
      );

  List<Widget> _buildActivities() {
    var widgets = <Widget>[SizedBox(width: _Constants.itemSpacing)];

    activities.forEach((activityType, activityQuality) {
      widgets
        ..add(
          ActivityWidget(
            activityType: activityType,
            activityQuality: activityQuality,
          ),
        )
        ..add(_buildSpacing());
    });

    return widgets;
  }
}
