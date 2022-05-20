import 'package:flutter/material.dart';
import 'package:meal_monckey/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.icons.backgroundIcon.path),
          ),
        ),
        child: Center(
          child: Image(
            width: 218,
            height: 185,
            image: AssetImage(Assets.images.logo.path),
          ),
        ),
      ),
    );
  }
}
