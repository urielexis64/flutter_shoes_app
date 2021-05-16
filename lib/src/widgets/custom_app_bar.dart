import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  CustomAppBar({
    @required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          margin: EdgeInsets.only(top: 32),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                this.text,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Icon(Icons.search, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
