import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String icon;
  final String hintText;
  final bool obscureText;
  final Widget suffixIcon;
  const TextFieldCustomWidget({
    super.key,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.grey[350]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(18),
            child: SvgPicture.asset(icon),
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
