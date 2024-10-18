import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/labeltext_small_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/login_option_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/login_textbutton_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/signup_pagenumber_text_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarCustomWidget(),
      body: Padding(
        padding: kPadding30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignupPageNumberTextWidget(
              text: "Signup 1 of 4",
            ),
            kHeight10,
            const HeadlineLargeCustomWidget(text: "Welcome!"),
            kHeight35,
            const LoginOptionCustomWidget(),
            kHeight15,
            const LabelTextSmallCustomWidget(labelText: "or signup with"),
            kHeight15,
            const TextFieldCustomWidget(
                icon: personIcon, hintText: "Full Name"),
            const TextFieldCustomWidget(
                icon: emailIcon, hintText: "Email Address"),
            const TextFieldCustomWidget(
                icon: phoneIcon, hintText: "Phone Number"),
            const TextFieldCustomWidget(
              icon: passwordIcon,
              hintText: "Password",
              obscureText: true,
            ),
            const TextFieldCustomWidget(
              icon: passwordIcon,
              hintText: "Re-enter Password",
              obscureText: true,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    LinkTextCustomWidget(
                        label: "Login",
                        ontap: () {
                          Navigator.pushNamed(context, "/loginScreen");
                        }),
                    kWidth80,
                    Expanded(
                        child: MainButtonCustomWidget(
                      text: "Continue",
                      ontap: () {
                        Navigator.pushNamed(context, "/farmInfoScreen");
                      },
                    ))
                  ],
                ),
              ),
            ),
            kHeight25,
          ],
        ),
      ),
    );
  }
}
