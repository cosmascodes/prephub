import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> CurrentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) => CurrentPageIndex = index;

  // Jump to specific dot
  void dotNavigationClick(index) {
    CurrentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index and jump to next page
  void nextPage() {
    int page = CurrentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

  // update current index and jump to last page
  void skipPage() {
    CurrentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
