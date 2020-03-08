import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smoge/app/app_icons.dart';

abstract class _Constants {
  static const double iconSize = 30;
  static const double itemSpacing = 20;
  static const double badgeSize = 15;
}

enum ActivityQuality { good, bad }

class ActivitiesWidget extends StatelessWidget {
  const ActivitiesWidget({
    Key key,
    this.runningQuality,
    this.walkingQuality,
    this.bikingQuality,
  }) : super(key: key);

  final ActivityQuality runningQuality;
  final ActivityQuality walkingQuality;
  final ActivityQuality bikingQuality;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSpacing(),
          _buildActivityItem(
            context,
            Image.asset(AppIcons.run),
            "Running",
            runningQuality,
          ),
          _buildSpacing(),
          _buildActivityItem(
            context,
            Image.asset(AppIcons.walking),
            "Walking",
            walkingQuality,
          ),
          _buildSpacing(),
          _buildActivityItem(
            context,
            Image.asset(AppIcons.cycle),
            "Biking",
            bikingQuality,
          ),
          _buildSpacing(),
        ],
      );

  Widget _buildActivityItem(
    BuildContext context,
    Image activityIcon,
    String title,
    ActivityQuality quality,
  ) =>
      Expanded(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: _Constants.badgeSize / 2,
                right: _Constants.badgeSize / 2,
              ),
              child: _buildActivityContainer(context, activityIcon, title),
            ),
            Positioned(right: 0, top: 0, child: _buildWarningBadge(quality)),
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
              style: Theme.of(context).textTheme.body1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      );

  Widget _buildSpacing() => SizedBox(
        width: _Constants.itemSpacing - _Constants.badgeSize / 2,
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
}
