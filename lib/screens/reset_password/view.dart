import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/login_screen/view.dart';

class ResetScreen extends StatelessWidget {
  ResetScreen({Key? key}) : super(key: key);
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
                  'Reset Password',
                  style: TextStyle(fontSize: 30, fontFamily: 'Metropolis'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Please enter your email to receive a link to  create a \new password via email',
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
                  c.pressedButton(label: 'Send', bgColor: Color(0xffFC6011),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
