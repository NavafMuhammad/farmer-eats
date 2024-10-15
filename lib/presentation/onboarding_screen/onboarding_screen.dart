import 'package:farmer_eats/core/color_constants.dart';
import 'package:farmer_eats/presentation/onboarding_screen/models/onboarding_model.dart';
import 'package:farmer_eats/presentation/widgets/login_textbutton_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (ctx, i) {
          return Container(
            width: size.width,
            height: size.height,
            color: contentList[i].backgColor,
            child: Stack(
              children: [
                Positioned(
                  width: size.width,
                  top: 20,
                  child: SizedBox(
                    height: size.width * 0.96,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      contentList[i].image,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: size.width,
                    height: size.width * 1.11,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(contentList[i].title,
                              style:
                                  Theme.of(context).textTheme.headlineMedium),

                          Text(
                            contentList[i].desciption,
                            textAlign: TextAlign.center,
                          ),

                          // add here pageview indicator
                          SmoothPageIndicator(
                            controller: _pageController,
                            effect: const ExpandingDotsEffect(
                                dotWidth: 7,
                                dotHeight: 7,
                                activeDotColor: kPrimaryTextColor,
                                dotColor: kPrimaryTextColor),
                            onDotClicked: (index) {
                              _pageController.animateToPage(
                                index,
                                duration: Durations.extralong1,
                                curve: Curves.linear,
                              );
                            },
                            count: 3,
                          ),

                          Container(
                            width: size.width * 0.6,
                            height: size.width * 0.13,
                            decoration: BoxDecoration(
                                color: contentList[i].backgColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: Center(
                                child: Text(contentList[i].buttonText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(color: Colors.white))),
                          ),

                          const LoginTextButtonCustomWidget()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}


