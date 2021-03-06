import 'package:flutter/material.dart';

class RoundBackground extends StatelessWidget {
  final Color outsideColor;
  final Color insideColor;
  final Container child;
  final double radius;

  const RoundBackground(
      {@required this.outsideColor,
      @required this.insideColor,
      @required this.radius,
      @required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: outsideColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
        child: Container(
          decoration: new BoxDecoration(
              color: insideColor,
              borderRadius: new BorderRadius.all(Radius.circular(radius))),
          child: child,
        ),
      ),
    );
  }
}
