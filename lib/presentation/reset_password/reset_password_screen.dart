import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/text_row_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomWidget(),
      body: Padding(
        padding: kPadding30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight45,
            const HeadlineLargeCustomWidget(text: "Reset Password"),
            kHeight15,
            TextRowCustomWidget(
                text: "Remember your password?",
                buttonText: "Login",
                onTap: () {
                  Navigator.pushNamed(context, "/loginScreen");
                }),
            kHeight45,
            const TextFieldCustomWidget(
                icon: passwordIcon, hintText: "New Password"),
            const TextFieldCustomWidget(
                icon: passwordIcon, hintText: "Confirm New Password"),
            kHeight25,
            MainButtonCustomWidget(
                text: "Submit",
                ontap: () {
                  Navigator.pushNamed(context, "/loginScreen");
                }),
          ],
        ),
      ),
    );
  }
}
