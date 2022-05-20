import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/on_boarding/controller.dart';

class PageItem extends StatelessWidget {
  Components item = Components();
  OnboardingModel? c;
  PageItem(this.c);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image(
            width: 225.44,
            height: 294.81,
            image: AssetImage(
              c!.image.toString(),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            c!.label.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 33,
          ),
          Text(
            c!.hint.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
