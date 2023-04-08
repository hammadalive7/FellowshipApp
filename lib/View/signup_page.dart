import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/app_bar.dart';
import '../components/button.dart';
import '../components/textform_field.dart';
import 'confirm_account_page.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Welcome to Bytewise!", "Signup to create your account"),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Email Address" ,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Enter your email address", false),
              SizedBox(height: Get.height * 0.02),
              const Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Enter your full name",false),
               SizedBox(height: Get.height * 0.02),
              const Text(
                "Mobile Number" ,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Enter your mobile number", false),
              SizedBox(height: Get.height * 0.02),
              const Text(
                "Password" ,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Enter your password", true),
              SizedBox(height: Get.height * 0.02),
              const Text(
                "Confirm Password" ,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Enter password again", true),
              SizedBox(height: Get.height * 0.04),



              button("Signup", () {
                debugPrint("Signup Pressed");
                Get.to(() => const ConfirmAccount());
              }),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
