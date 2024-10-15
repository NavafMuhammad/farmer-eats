import 'package:farmer_eats/core/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOptionItemCustomWidget
 extends StatelessWidget {
  final String icon;
  const LoginOptionItemCustomWidget
  ({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 96,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: kLightGreyColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}