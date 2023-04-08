import 'package:fellowship_app/Theme/colors.dart';
import 'package:fellowship_app/components/button.dart';
import 'package:fellowship_app/components/transparent_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/textform_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              Center(
                child: Image.asset("assets/images/ResetPassword.png",
                    // fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 41,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: textColor,
                ),
              ),
              SizedBox(height: Get.height * 0.015),
              const Text("New Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  )),
              SizedBox(height: Get.height * 0.02),
              CustomTextFormField("Enter your new password", false),
              SizedBox(height: Get.height * 0.02),
              const Text("Confirm Your Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  )),
              SizedBox(height: Get.height * 0.015),
              CustomTextFormField("Confirm your password", false),
              SizedBox(height: Get.height * 0.02),
              button("Reset Password", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
