import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prephub/onboarding/controller/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Text(
              'Signup',
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.white,
            dotHeight: 6,
            dotWidth: 7,
            dotColor: Colors.white70,
          ),
          count: 3,
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 241, 255, 114),
            ),
            child: Text(
              "Let's go",
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
