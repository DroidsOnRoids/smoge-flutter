import 'package:flutter/material.dart';
import 'package:smoge/app/app_icons.dart';
import 'package:smoge/ui/home/widgets/activities/activities_widget.dart';
import 'package:smoge/generated/l10n.dart';

abstract class _Constants {
  static const double iconSize = 30;
  static const double badgeSize = 15;
}

enum ActivityType { walking, running, biking }

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({Key key, this.activityType, this.activityQuality})
      : super(key: key);

  final ActivityType activityType;
  final ActivityQuality activityQuality;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: _Constants.badgeSize / 2,
                right: _Constants.badgeSize / 2,
              ),
              child: _buildActivityContainer(
                context,
                _imageForActivityType(activityType),
                _titleForActivityType(context, activityType),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: _buildWarningBadge(activityQuality),
            ),
          ],
        ),
      );

  Widget _buildActivityContainer(
    BuildContext context,
    Image activityIcon,
    String title,
  ) =>
      Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(60),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Center(
            child: _buildActivityColumn(context, activityIcon, title),
          ),
        ),
      );

  Widget _buildActivityColumn(
    BuildContext context,
    Image activityIcon,
    String title,
  ) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: _Constants.iconSize,
            height: _Constants.iconSize,
            child: activityIcon,
          ),
          SizedBox(height: 10),
          Opacity(
            opacity: 0.75,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      );

  Widget _buildWarningBadge(ActivityQuality quality) {
    switch (quality) {
      case ActivityQuality.good:
        return Container();
      case ActivityQuality.bad:
        return Container(
          width: _Constants.badgeSize,
          height: _Constants.badgeSize,
          child: Image.asset(AppIcons.warning),
        );
    }

    return Container();
  }

  Image _imageForActivityType(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.walking:
        return Image.asset(AppIcons.walking);
      case ActivityType.running:
        return Image.asset(AppIcons.run);
      case ActivityType.biking:
        return Image.asset(AppIcons.cycle);
    }

    return null;
  }

  String _titleForActivityType(BuildContext context, ActivityType activityType) {
    switch (activityType) {
      case ActivityType.walking:
        return Strings.of(context).activityWalking;
      case ActivityType.running:
        return Strings.of(context).activityRunning;
      case ActivityType.biking:
        return Strings.of(context).activityBiking;
    }

    return null;
  }
}
