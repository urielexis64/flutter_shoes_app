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
          children: [_ShadowShoe(), _ShadowSize()],
        ),
      ),
    );
  }
}

class _ShadowSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _SizeBox(7),
          _SizeBox(7.5),
          _SizeBox(8),
          _SizeBox(8.5),
          _SizeBox(9),
          _SizeBox(9.5),
        ],
      ),
    );
  }
}

class _SizeBox extends StatelessWidget {
  final double size;
  _SizeBox(
    this.size,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: Text(
        '${size.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 8,
                color: Colors.black.withOpacity(0.2))
          ]),
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
