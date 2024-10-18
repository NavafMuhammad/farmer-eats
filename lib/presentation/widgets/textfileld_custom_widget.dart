import 'package:farmer_eats/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String? icon;
  final String hintText;
  final bool obscureText;
  final Widget suffixIcon;
  final VoidCallback? onTapSuffix;
  const TextFieldCustomWidget({
    super.key,
    this.icon,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon = const SizedBox(),
    this.onTapSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          color: Colors.grey[350]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: icon != null
              ? Padding(
                  padding: const EdgeInsets.all(18),
                  child: SvgPicture.asset(icon!),
                )
              : null,
          suffixIcon:
              GestureDetector(onTap: onTapSuffix ?? () {}, child: suffixIcon),
          label: icon != null
              ? Text(hintText, style: labelLarge)
              : Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(hintText, style: labelLarge),
                ),
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.normal),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
