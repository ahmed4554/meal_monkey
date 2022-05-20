import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/reset_password/view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  Components c = Components();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 60,
            ),
            const Text(
              'Login',
              style: TextStyle(fontSize: 30, fontFamily: 'Metropolis'),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Add your details to login',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff7C7D7E),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  c.input(label: 'Your Email'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Password'),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            c.pressedButton(
              bgColor: const Color(0xffFC6011),
              label: 'Login',
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                c.navigateTo(context, pageName: ResetScreen());
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff7C7D7E),
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            const Text(
              'or Login With',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff7C7D7E),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Container(
              height: 55,
              margin: EdgeInsets.symmetric(horizontal: 34),
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image(
                    width: 25,
                    height: 15,
                    image: AssetImage('assets/icons/fb.png'),
                  ),
                ),
                label: const Text('Login with Facebook'),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              height: 55,
              margin: EdgeInsets.symmetric(horizontal: 34),
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Color(0xffDD4B39)),
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image(
                    width: 20,
                    height: 15,
                    image: AssetImage('assets/icons/google.png'),
                  ),
                ),
                label: const Text('Login with Google'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
