import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/gen/assets.gen.dart';
import 'package:meal_monckey/gen/fonts.gen.dart';
import 'package:meal_monckey/screens/login_screen/view.dart';
import 'package:meal_monckey/screens/register/view.dart';

class BeforeLogin extends StatelessWidget {
  BeforeLogin({Key? key}) : super(key: key);
  Components c = Components();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                alignment: AlignmentDirectional.topCenter,
                height: 530,
                child: Image(
                  fit: BoxFit.fitWidth,
                  height: 450,
                  width: double.infinity,
                  image: AssetImage(Assets.images.organe.path),
                ),
              ),
              Image(
                width: 218,
                height: 185,
                image: AssetImage(Assets.images.logo.path),
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff7C7D7E),
                  fontFamily: FontFamily.metropolis),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          c.pressedButton(
            bgColor: const Color(0xffFC6011),
            label: 'Login',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 26,
          ),
          c.outLinedButton(label: 'Create an Account', onClick: () 
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
              );
          }),
          const SizedBox(height:28),
        ],
      ),
    );
  }
}
