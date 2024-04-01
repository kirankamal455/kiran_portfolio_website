import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:velocity_x/velocity_x.dart';

class SquareWidget extends StatelessWidget {
  final String imagePath;
  final String imageName;
  const SquareWidget(
      {super.key, required this.imagePath, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return [
      Image.asset(
        imagePath,
        height: 55,
      ),
      imageName.text.fontFamily(FontFamily.montserrat).make().p(8)
    ].vStack().pOnly(top: 70);
  }
}
