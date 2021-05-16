import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* body: ShoePreview(), */
      body: Column(
        children: [
          CustomAppBar(text: 'For you'),
          SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoePreview(),
                  ShoeDescription(
                      title: 'Nike Air Max 720',
                      description:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
