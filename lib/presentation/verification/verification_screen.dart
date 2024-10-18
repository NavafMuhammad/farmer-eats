import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/continue_button_with_backarrow.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/signup_pagenumber_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustomWidget(),
      body: Padding(
        padding: kPadding30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignupPageNumberTextWidget(text: "Signup 3 of 4"),
            HeadlineLargeCustomWidget(text: "Verification"),
            Text(
              "Attached a proof of Department of Agriculture registrations i.e. Florida Fresh, USDA Approved, USDA Organic",
              style: TextStyle(color: kLightTextColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Attach proof of registration"),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: kPrimaryColor,
                  child: Icon(
                    CupertinoIcons.photo_camera,
                    color: kWhiteColor,
                  ),
                )
              ],
            ),
            ContinueButtonWithBackArrow(),
            kHeight25,
          ],
        ),
      ),
    );
  }
}
