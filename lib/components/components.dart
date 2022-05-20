import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Components {
  Widget pressedButton({
    required String label,
    required Color bgColor,
    VoidCallback? onClick,
  }) {
    return Container(
      height: 50,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(28.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 34),
      width: double.infinity,
      child: TextButton(
        onPressed: onClick,
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget outLinedButton({
    required String label,
    VoidCallback? onClick,
  }) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 34),
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onClick,
        child: Text(
          label,
          style: const TextStyle(color: Color(0xffFC6011), fontSize: 16),
        ),
      ),
    );
  }

  Widget input({required String label,Widget? icon}) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: icon,
          label: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xffB6B7B7),
            ),
          ),
          fillColor: Color(0xffF2F2F2),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }

  void navigateTo(context, {required Widget pageName}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
  }

  Widget otp_item(context, {TextEditingController? otpController}) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      width: 56,
      height: 56,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            fillColor: Color(0xffF2F2F2),
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            hintText: '0',
            hintStyle: TextStyle(fontSize: 30, color: Color(0xffB6B7B7)),
            border: InputBorder.none
            // border: OutlineInputBorder(borderSide: const BorderSide(width: 0,color: Color(0xffF2F2F2),),borderRadius: BorderRadius.circular(12)),
            ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
  
}
