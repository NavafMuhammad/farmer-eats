import 'package:farmer_eats/core/color_constants.dart';
import 'package:flutter/material.dart';

class SignupPageNumberTextWidget extends StatelessWidget {
  final String text;
  const SignupPageNumberTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: kLightTextColor),
    );
  }
}