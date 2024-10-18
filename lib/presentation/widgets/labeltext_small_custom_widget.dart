import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:flutter/material.dart';

class LabelTextSmallCustomWidget extends StatelessWidget {
  final String labelText;
  const LabelTextSmallCustomWidget({
    super.key,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        labelText,
        style: labelSmall.copyWith(color: kLightTextColor),
      ),
    );
  }
}