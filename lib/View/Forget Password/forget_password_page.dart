import 'package:fellowship_app/Theme/colors.dart';
import 'package:fellowship_app/View/Forget%20Password/reset_password_page.dart';
import 'package:fellowship_app/components/button.dart';
import 'package:fellowship_app/components/transparent_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/textform_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: transparentAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/ForgotPassword.png")),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 41,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: textColor,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              const Text(
                  "Please enter Email / Mobile Number associated with your account",
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  )),
              SizedBox(height: Get.height * 0.02),
              const Text("Email Address or Username",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  )),
              SizedBox(height: Get.height * 0.03),
              CustomTextFormField("Your email address or username", false),
              SizedBox(height: Get.height * 0.025),
              button("Send Verification Code", () {
                Get.to(() => const ResetPassword());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
