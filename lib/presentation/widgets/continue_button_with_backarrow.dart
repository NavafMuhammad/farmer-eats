import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/constants.dart';
import 'package:farmer_eats/presentation/widgets/main_button_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueButtonWithBackArrow extends StatelessWidget {
  const ContinueButtonWithBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(arrowBackIcon)),
            kWidth85,
            Expanded(
              child: MainButtonCustomWidget(
                  text: "Continue",
                  ontap: () {
                    Navigator.pushNamed(context, "/verificationScreen");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
