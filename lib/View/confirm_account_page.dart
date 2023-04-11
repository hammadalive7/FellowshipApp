import 'package:fellowship_app/components/transparent_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Theme/colors.dart';
import '../components/button.dart';
import 'OTPScreen/email_varification.dart';
import 'OTPScreen/sms_verification.dart';

class ConfirmAccount extends StatelessWidget {
  const ConfirmAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: transparentAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/ConfirmAccount.png",
                    // fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                const Text(
                  "Confirm your account",
                  style: TextStyle(
                    fontSize: 35  ,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                button("Send Verification Email", () {
                  Get.to(() => EmailVerification());
                }),
                SizedBox(height: Get.height * 0.02),
                button("Send Verification SMS", () {
                  Get.to(() => SMSVerification());
                }),


              ],
            ),
          ),
        ),

    );
  }
}
