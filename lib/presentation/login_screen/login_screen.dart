import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/login_option_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "FarmerEats",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(30),
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
        Row(
          children: [
            const Text(
              "New here?",
              style: TextStyle(color: kLightTextColor),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Create account",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextFieldCustomWidget(icon: emailIcon, hintText: "Email Address"),
        TextFieldCustomWidget(
          icon: passwordIcon,
          hintText: "Password",
          obscureText: true,
          suffixIcon: Padding(
            padding: EdgeInsets.only(top: 14, right: 16),
            child: Text(
              "Forgot?",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        MainButtonCustomWidget(text: "Login"),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "or login with",
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: kLightTextColor),
          ),
        ),
        kHeight35,
        const LoginOptionCustomWidget()
      ],
    );
  }
}
