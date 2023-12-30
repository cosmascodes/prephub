import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prephub/onboarding/controller/onboarding_controller.dart';
import 'package:prephub/onboarding/screens/widgets/onboarding_dots.dart';
import 'package:prephub/onboarding/screens/widgets/onboarding_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(229, 136, 145, 255),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.CurrentPageIndex,
              children: const [
                OnBoardingPage(
                  image: 'assets/onboarding1.png',
                  text:
                      'Explore tailored past papers for focused exam prep. Elevate your scores effortlessly',
                ),
                OnBoardingPage(
                  image: 'assets/onboarding2.png',
                  text:
                      'Your all-in-one hub for organized past papers. Study smart, excel with ease',
                ),
                OnBoardingPage(
                  image: 'assets/onboarding3.png',
                  text:
                      'Ace exams using curated past papers. Effortless studying, efficient progress tracking',
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                  top: 10,
                  bottom: 25,
                ),
                child: OnBoardingDots(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
