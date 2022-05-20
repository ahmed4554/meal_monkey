import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/login_screen/view.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  Components c = Components();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontFamily: 'Metropolis'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Add your details to sign up',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff7C7D7E),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  c.input(label: 'Name'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Email'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Mobile No'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Address'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Password'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.input(label: 'Confirm Password'),
                  const SizedBox(
                    height: 28,
                  ),
                  c.pressedButton(
                    label: 'Sign Up',
                    bgColor: Color(0xffFC6011),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff7C7D7E),
                      ),
                      children: [
                        const WidgetSpan(
                          child: Text('Already have an Account? '),
                        ),
                        WidgetSpan(
                          child: InkWell(
                            onTap: () 
                            {
                              c.navigateTo(context, pageName:LoginScreen());
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xffFC6011),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
