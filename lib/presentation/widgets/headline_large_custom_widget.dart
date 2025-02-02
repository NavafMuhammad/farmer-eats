import 'package:farmer_eats/core/constants.dart';
import 'package:flutter/material.dart';

class HeadlineLargeCustomWidget extends StatelessWidget {
  final String text;
  const HeadlineLargeCustomWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: Theme.of(context).textTheme.headlineLarge,
      style: headlineLarge,
    );
  }
}