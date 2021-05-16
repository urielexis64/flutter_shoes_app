import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;

  OrangeButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.orangeAccent),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
