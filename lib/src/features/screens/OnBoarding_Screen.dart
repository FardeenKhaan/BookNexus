import 'package:book_nexus/After_Onboarding.dart';
import 'package:book_nexus/src/features/Authentication/mob_signup.dart';
import 'package:book_nexus/src/constants/colors.dart';
import 'package:book_nexus/src/constants/image_strings.dart';
import 'package:book_nexus/src/constants/text_strings.dart';
import 'package:book_nexus/src/features/model/model_OnBoarding.dart';
import 'package:book_nexus/src/features/screens/onboarding/OnBoardingPage_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_Screen extends StatefulWidget {
  Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  final controller = LiquidController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnBoardingPage_Widget(
          model: ModelOnboarding(
        image: tonBoardingImage1,
        title: tonBoardingTitle1,
        subtitle: tonBoardingSubTitle1,
        counterText: tonBoardingCounter1,
        bgcolor: tonBoardingPage1Color,
      )),
      OnBoardingPage_Widget(
          model: ModelOnboarding(
        image: tonBoardingImage2,
        title: tonBoardingTitle2,
        subtitle: tonBoardingSubTitle2,
        counterText: tonBoardingCounter2,
        bgcolor: tonBoardingPage2Color,
      )),
      OnBoardingPage_Widget(
          model: ModelOnboarding(
        image: tonBoardingImage3,
        title: tonBoardingTitle3,
        subtitle: tonBoardingSubTitle3,
        counterText: tonBoardingCounter3,
        bgcolor: tonBoardingPage3Color,
      ))
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: OnPageChangeCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                  onPressed: () {
                    int nextpage = controller.currentPage + 1;
                    controller.animateToPage(page: nextpage);
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black26),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    // overlayColor: Colors.white
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff272727),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ))),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Choose_form()));
                  },
                  // => controller.jumpToPage(page: 2),
                  child: Text('Skip'))),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              effect: WormEffect(dotColor: Color(0xff272727), dotHeight: 5),
              count: 3,
            ),
          )
        ],
      ),
    );
  }

  void OnPageChangeCallback(int activePageIndex) {
    setState(() {
      currentIndex = activePageIndex;
    });
  }
}
