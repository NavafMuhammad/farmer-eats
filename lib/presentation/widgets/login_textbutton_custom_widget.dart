import 'package:flutter/material.dart';

class LinkTextCustomWidget extends StatelessWidget {
  final String label;
  final VoidCallback ontap;
  const LinkTextCustomWidget(
      {super.key, required this.label, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Text(
          label,
          style: const TextStyle(decoration: TextDecoration.underline),
        ));
  }
}
