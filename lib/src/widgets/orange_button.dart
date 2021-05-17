import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double opacity;

  OrangeButton(
      {@required this.text,
      this.width = 100,
      this.height = 40,
      this.opacity = 1});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: this.height,
      onPressed: () {},
      shape: StadiumBorder(),
      elevation: 0,
      highlightElevation: 0,
      splashColor: Colors.white60,
      animationDuration: Duration(milliseconds: 1200),
      highlightColor: Colors.transparent,
      color: Colors.orangeAccent.withOpacity(opacity),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
