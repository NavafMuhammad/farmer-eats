import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:flutter/material.dart';

class MainButtonCustomWidget extends StatelessWidget {

  final String text;
  final VoidCallback ontap;
  const MainButtonCustomWidget({
    super.key,
    required this.text,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.width * 0.13,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: titleLarge
              .copyWith(color: kWhiteColor),
        ),
      ),
    );
  }
}