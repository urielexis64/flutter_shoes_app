import 'package:flutter/material.dart';
import 'package:shoes_app/src/pages/shoe_description_page.dart';

class ShoePreview extends StatelessWidget {
  final bool fullScreen;

  const ShoePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoeDescriptionPage(),
              ));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: fullScreen ? 0 : 30, vertical: fullScreen ? 0 : 5),
        child: Container(
          width: double.infinity,
          height: fullScreen ? 400 : 380,
          decoration: BoxDecoration(
              color: Color(0xfff8d468),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 6),
                    blurRadius: 12,
                    spreadRadius: -5,
                    color: Colors.black12)
              ],
              borderRadius: fullScreen
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  : BorderRadius.circular(50)),
          child: Column(
            children: [_ShadowShoe(), if (!fullScreen) _ShadowSize()],
          ),
        ),
      ),
    );
  }
}

class _ShadowSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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

class _SizeBox extends StatefulWidget {
  final double size;
  _SizeBox(
    this.size,
  );

  @override
  __SizeBoxState createState() => __SizeBoxState();
}

class __SizeBoxState extends State<_SizeBox> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _active = !_active;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          '${widget.size.toString().replaceAll('.0', '')}',
          style: TextStyle(
              color: _active ? Colors.white : Color(0xffF1A23A),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            color: _active ? Color(0xffF1A23A) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  color: _active
                      ? Color(0xffF1A23A)
                      : Colors.black.withOpacity(0.2))
            ]),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Stack(
        children: [
          Positioned(bottom: 10, right: 0, left: 0, child: _Shadow()),
          Hero(
            tag: 'shoe',
            child: Image(
              image: AssetImage('assets/img/azul.png'),
            ),
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
