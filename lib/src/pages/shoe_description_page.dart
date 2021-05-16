import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ShoePreview(fullScreen: true),
              Positioned(
                top: 60,
                left: 20,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.white,
                    size: 42,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoeDescription(
                      title: 'Nike Air Max 720',
                      description:
                          'Nostrud culpa esse ipsum ex proident tempor. Ad esse nostrud Lorem aliquip sint labore tempor ipsum in ipsum nisi enim amet. Ex mollit in aliquip pariatur et voluptate irure quis irure et nisi.'),
                  _MountBuyNow(),
                  _ColorsAndMore(),
                  _BottomButtons()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ShadowedButton(Icon(
            Icons.favorite,
            color: Colors.red,
          )),
          _ShadowedButton(Icon(
            Icons.add_shopping_cart_rounded,
            color: Colors.grey,
          )),
          _ShadowedButton(Icon(
            Icons.settings,
            color: Colors.grey,
          )),
        ],
      ),
    );
  }
}

class _ShadowedButton extends StatelessWidget {
  final Icon icon;

  const _ShadowedButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: this.icon,
        width: 55,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 16,
                  offset: Offset(0, 4),
                  spreadRadius: -5,
                  color: Colors.black.withOpacity(0.15))
            ]));
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                left: 90,
                child: _CircleColorButton(
                  color: Color(0xffc6d642),
                ),
              ),
              Positioned(
                  left: 60,
                  child: _CircleColorButton(
                    color: Color(0xffffad29),
                  )),
              Positioned(
                  left: 30,
                  child: _CircleColorButton(
                    color: Color(0xff2099f1),
                  )),
              _CircleColorButton(
                color: Color(0xff364d56),
              ),
            ],
          )),
          OrangeButton(
            text: 'More related items',
            width: 140,
            height: 30,
            opacity: .7,
          )
        ],
      ),
    );
  }
}

class _CircleColorButton extends StatelessWidget {
  final Color color;

  _CircleColorButton({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(shape: BoxShape.circle, color: this.color),
    );
  }
}

class _MountBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Text(
              '\$120.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            OrangeButton(text: 'Buy Now')
          ],
        ),
      ),
    );
  }
}
