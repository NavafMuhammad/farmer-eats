import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/text_row_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarCustomWidget(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight45,
            const HeadlineLargeCustomWidget(text: "Forgot Password?"),
            kHeight15,
            TextRowCustomWidget(
              text: "Remember your password?",
              buttonText: "Login",
              onTap: () {
                Navigator.pushNamed(context, "/loginScreen");
              },
            ),
            kHeight45,
            const TextFieldCustomWidget(
                icon: phoneIcon, hintText: "Phone Number"),
            kHeight25,
             MainButtonCustomWidget(text: "Send Code", ontap: (){
              Navigator.pushNamed(context, "/verifyOtpScreen");
            },)
          ],
        ),
      ),
    );
  }
}
