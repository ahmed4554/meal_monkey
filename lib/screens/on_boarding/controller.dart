import 'package:flutter/cupertino.dart';

class OnBoardingController {
  var pageController = PageController();

  List<OnboardingModel> pageitem = [
    OnboardingModel(
        image: 'assets/images/on_boarding_screen/onboarding1.png',
        hint:
            'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
        label: 'Find Food You Love',),
        OnboardingModel(
        image: 'assets/images/on_boarding_screen/onboarding2.png',
        hint:
            'Fast food delivery to your home, office wherever you are',
        label: 'Fast Delivery',),
        OnboardingModel(
        image: 'assets/images/on_boarding_screen/onboarding3.png',
        hint:
            'Real time tracking of your food on the app once you placed the order',
        label: 'Live Tracking',)
  ];
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
  }
  
}

class OnboardingModel {
  String? image;
  String? label;
  String? hint;
  OnboardingModel({this.image, this.label, this.hint});
}
