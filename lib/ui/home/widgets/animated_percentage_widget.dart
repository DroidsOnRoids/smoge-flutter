import 'package:flutter/material.dart';

class AnimatedPercentageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedPercentageWidgetState();
}

class _AnimatedPercentageWidgetState extends State<AnimatedPercentageWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  String _number;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 210).animate(_controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation objects value
          _number = _animation.value.toStringAsFixed(0);
        });
      });

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Text("$_number%", style: Theme.of(context).textTheme.title);
}
