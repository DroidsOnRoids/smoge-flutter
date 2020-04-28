import 'package:flutter/material.dart';
import 'package:smoge/app/app_icons.dart';
import 'package:smoge/ui/common_widget/circular_icon_button.dart';
import 'package:smoge/utils/strings.dart';

abstract class _Constants {
  static const searchButtonDefaultPadding = 18.0;
}

class MeasuringPointsPage extends StatefulWidget {
  const MeasuringPointsPage();

  @override
  _MeasuringPointsPageState createState() => _MeasuringPointsPageState();
}

class _MeasuringPointsPageState extends State<MeasuringPointsPage> {
  final mockPlaces = ["Wroclaw", "Krakow", "Warszawa", "Katowice", "Poznań"];
  double _buttonPadding;

  @override
  void initState() {
    super.initState();

    _buttonPadding = _Constants.searchButtonDefaultPadding;
  }

  @override
  Widget build(BuildContext context) => SafeArea(
    bottom: false,
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildTitle(context, Strings.measuringPointsTitle),
            _buildPlaceholderImage(),
            _buildSearchView(context),
            Expanded(child: Container()),
            _buildPlacesList(),
          ],
        ),
  );

  Widget _buildTitle(BuildContext context, String text) => Text(
    text,
    style: Theme.of(context).textTheme.subhead,
    textAlign: TextAlign.center,
  );

  Widget _buildPlaceholderImage() => Opacity(
        opacity: 0.2,
        child: Image.asset(AppIcons.measuringPoint)
    );

  Widget _buildSearchView(BuildContext context) => Column(
    children: <Widget>[
      _buildTitle(context, Strings.findMeasuringPoint),
      AnimatedPadding(
        duration: const Duration(milliseconds: 150),
        padding: EdgeInsets.only(top: _buttonPadding),
        onEnd: _searchButtonDidEndAnimation,
        child: CircularIconButton(
          icon: const Icon(Icons.search),
          onPressed: () => setState(() => _buttonPadding = 5.0),
        ),
      )
    ],
  );

  Widget _buildPlacesList() => SizedBox(
    height: 225.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.0),
        itemBuilder: (BuildContext context, int index) => _buildPlacesCell(index),
        itemCount: mockPlaces.length),
  );

  Widget _buildPlacesCell(int index) => Column(
    children: <Widget>[
      Container(
        height: 85.0,
        width: 140.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 29.0,
                  offset: Offset(0, 21)
              )
            ]
        ),
        margin: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.only(left: 13.0, top: 13.0),
        child: Text(mockPlaces[index]),
      ),
    ],
  );

  void _searchButtonDidEndAnimation() {
    if (_buttonPadding == _Constants.searchButtonDefaultPadding) {

    } else {
      setState(() => _buttonPadding = _Constants.searchButtonDefaultPadding);
    }
  }
}

