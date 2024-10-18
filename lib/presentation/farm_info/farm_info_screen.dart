import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/appbar_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/continue_button_with_backarrow.dart';
import 'package:farmer_eats/presentation/widgets/headline_large_custom_widget.dart';
import 'package:farmer_eats/presentation/widgets/signup_pagenumber_text_widget.dart';
import 'package:farmer_eats/presentation/widgets/textfileld_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class FarmInfoScreen extends StatelessWidget {
  const FarmInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomWidget(),
      body: Padding(
        padding: kPadding30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignupPageNumberTextWidget(text: "Signup 2 of 4"),
            kHeight10,
            const HeadlineLargeCustomWidget(text: "Farm Info"),
            kHeight35,
            const TextFieldCustomWidget(
                icon: tagIcon, hintText: "Business Name"),
            const TextFieldCustomWidget(
                icon: emojiIcon, hintText: "Informal Name"),
            const TextFieldCustomWidget(
                icon: addressIcon, hintText: "Street Address"),
            const TextFieldCustomWidget(
              icon: locationIcon,
              hintText: "City",
            ),
            Row(
              children: [
                SizedBox(
                  width: 140,
                  child: TextFieldCustomWidget(
                    hintText: "State",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(
                        arrowDownIcon,
                      ),
                    ),
                  ),
                ),
                kWidth10,
                const Expanded(
                    child: TextFieldCustomWidget(hintText: "Enter Zipcode")),
              ],
            ),
            const ContinueButtonWithBackArrow(),
            kHeight25,
          ],
        ),
      ),
    );
  }
}


