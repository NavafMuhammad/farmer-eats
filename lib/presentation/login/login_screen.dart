import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/labeltext_small_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/login_option_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/text_row_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustomWidget(),
      body: Padding(
        padding: kPadding30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight35,
            SectionOne(),
            kHeight35,
            SectionTwo(),
            kHeight35,
            SectionThree(),
          ],
        ),
      ),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineLargeCustomWidget(text: "Welcome back!"),
        kHeight10,
        TextRowCustomWidget(
          text: "New here?",
          buttonText: "Create account",
          onTap: () {
            Navigator.pushNamed(context, "/createAccountScreen");
          },
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const TextFieldCustomWidget(
            icon: emailIcon, hintText: "Email Address"),
        TextFieldCustomWidget(
          icon: passwordIcon,
          hintText: "Password",
          obscureText: true,
          suffixIcon: const Padding(
            padding: EdgeInsets.only(top: 14, right: 16),
            child: Text(
              "Forgot?",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          onTapSuffix: () {
            Navigator.pushNamed(context, "/forgotPasswordScreen");
          },
        ),
        kHeight15,
        MainButtonCustomWidget(
          text: "Login",
          ontap: () {
            Navigator.pushNamed(context, "/finalScreen");
          },
        ),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LabelTextSmallCustomWidget(labelText: "or login with"),
        kHeight35,
        LoginOptionCustomWidget()
      ],
    );
  }
}
