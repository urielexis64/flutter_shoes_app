import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ShoePreview(fullScreen: true),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShoeDescription(
                      title: 'Nike Air Max 720',
                      description:
                          'Nostrud culpa esse ipsum ex proident tempor. Ad esse nostrud Lorem aliquip sint labore tempor ipsum in ipsum nisi enim amet. Ex mollit in aliquip pariatur et voluptate irure quis irure et nisi.'),
                  _MountBuyNow(),
                  _ColorsAndMore()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
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
