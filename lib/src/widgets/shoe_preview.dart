import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
            color: Color(0xfff8d468), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            _ShadowShoe(),
          ],
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 0, right: 0, left: 0, child: _Shadow()),
          Image(
            image: AssetImage('assets/img/amarillo.png'),
          )
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -.5,
      child: Container(
        width: 230,
        height: 120,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
          BoxShadow(
            color: Color(0xffeaa14e),
            blurRadius: 40,
          )
        ]),
      ),
    );
  }
}
