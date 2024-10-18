import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/login_textbutton_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/text_row_custom_widget.dart';
import 'package:flutter/material.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

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
            const HeadlineLargeCustomWidget(text: "Verify OTP"),
            kHeight15,
            TextRowCustomWidget(
                text: "Remember your password?",
                buttonText: "Login",
                onTap: () {
                  Navigator.pushNamed(context, "/loginScreen");
                }),
            kHeight45,
            kHeight25,
            MainButtonCustomWidget(
                text: "Submit",
                ontap: () {
                  Navigator.pushNamed(context, "/resetPasswordScreen");
                }),
            kHeight25,
            Center(
                child: LinkTextCustomWidget(label: "Resend Code", ontap: () {}))
          ],
        ),
      ),
    );
  }
}
