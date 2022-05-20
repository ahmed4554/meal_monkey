import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/screens/login_screen/view.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
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
                  'We have sent an OTP to\n your Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontFamily: 'Metropolis'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Please check your mobile number 071*****12 \n continue to reset your password',
                  textAlign: TextAlign.center,
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
              padding:const EdgeInsets.symmetric(horizontal: 34),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    c.otp_item(context),
                    c.otp_item(context),
                    c.otp_item(context),
                    c.otp_item(context),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            c.pressedButton(
              label: 'Send',
              bgColor: Color(0xffFC6011),
            ),
          ],
        ),
      ),
    );
  }
}
