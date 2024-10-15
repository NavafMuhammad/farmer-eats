import 'package:farmer_eats/core/color_constants.dart';
import 'package:flutter/material.dart';

class MainButtonCustomWidget extends StatelessWidget {
  final String text;
  const MainButtonCustomWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.width * 0.13,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: kWhiteColor),
      ),
    );
  }
}