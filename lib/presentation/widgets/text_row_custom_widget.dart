import 'package:farmer_eats/core/color_constants.dart';
import 'package:flutter/material.dart';

class TextRowCustomWidget extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback onTap;
  const TextRowCustomWidget({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(color: kLightTextColor),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            buttonText,
            style: const TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
