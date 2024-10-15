import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/presentation/widgets/login_option_item_custom_widget.dart';
import 'package:flutter/material.dart';

class LoginOptionCustomWidget extends StatelessWidget {
  const LoginOptionCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LoginOptionItemCustomWidget
        (icon: googleIcon),
        LoginOptionItemCustomWidget
        (icon: appleIcon),
        LoginOptionItemCustomWidget
        (icon: facebookIcon),
      ],
    );
  }
}