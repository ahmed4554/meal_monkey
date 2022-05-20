import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/on_boarding/controller.dart';
import 'package:meal_monckey/screens/on_boarding/page_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnBoardingController c = OnBoardingController();
  Components item = Components();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 620,
            child: PageView.builder(
              controller: c.pageController,
              itemCount: c.pageitem.length,
              onPageChanged: (index) {
                c.currentIndex = index;
                setState(() {});
              },
              itemBuilder: (context, index) => PageItem(
                c.pageitem[c.currentIndex],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) {
                setState(() {});
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.only(left: 10.0),
                  width: c.currentIndex == index?30:10,
                  height: 10,
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: Offset(0,0)
                    )],
                    color: c.currentIndex == index
                        ? const Color(0xffFC6011)
                        : const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          item.pressedButton(
              label: c.currentIndex!=c.pageitem.length?'next':'finish',
              bgColor: const Color(0xffFC6011),
              onClick: () {
                c.pageController.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn);
                setState(() {});
              }),
        ],
      ),
    );
  }
}
