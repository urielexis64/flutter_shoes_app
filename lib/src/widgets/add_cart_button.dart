import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class AddCartButton extends StatelessWidget {
  final double mount;
  AddCartButton({
    this.mount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              '\$${this.mount}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            OrangeButton(text: 'Add to cart'),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
