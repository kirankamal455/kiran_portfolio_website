import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomSocialMediaIcons extends StatelessWidget {
  final String assetName;

  const CustomSocialMediaIcons({
    super.key,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
