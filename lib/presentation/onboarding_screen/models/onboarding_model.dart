import 'package:farmer_eats/core/asset_constants.dart';
import 'package:farmer_eats/core/color_constants.dart';
import 'package:flutter/material.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String desciption;
  final String buttonText;
  final Color backgColor;
  OnboardingModel({
    required this.image,
    required this.title,
    required this.desciption,
    required this.buttonText,
    required this.backgColor,
  });
}

List<OnboardingModel> contentList = [
  OnboardingModel(
      image: onBoardingImage1,
      title: "Quality",
      desciption:
          "Sell your farm fresh product directly to\nconsumers, cutting out the middleman and\nreducing emissions of the global supply chain.",
      buttonText: 'Join the movement!',
      backgColor: kTertiaryColor),
  OnboardingModel(
    image: onBoardingImage2,
      title: "Convenient",
      desciption:
          "Our team of delivery drivers will make sure\nyour orders are picked up on time and\npromptly delivered to your customers.",
      buttonText: 'Join the movement!',
      backgColor: kPrimaryColor),
  OnboardingModel(
    image: onBoardingImage3,
      title: "Local",
      desciption:
          "We love the earth and know you do too! Join us\nin reducing our local carbon footprint one order\nat a time.",
      buttonText: 'Join the movement!',
      backgColor: kSecondaryColor),
];
