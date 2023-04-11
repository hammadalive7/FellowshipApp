import 'package:fellowship_app/Theme/colors.dart';
import 'package:fellowship_app/View/Forget%20Password/reset_password_page.dart';
import 'package:fellowship_app/components/button.dart';
import 'package:fellowship_app/components/transparent_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SMSVerification extends StatefulWidget {
  const SMSVerification({Key? key}) : super(key: key);

  @override
  State<SMSVerification> createState() => _SMSVerificationState();
}

class _SMSVerificationState extends State<SMSVerification> {


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
              Center(child: Image.asset("assets/images/smsverification.png")),
              SizedBox(height: Get.height * 0.02),
              const Text(
                "SMS Verification",
                style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: textColor,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              const Text(
                  "Enter verification code sent to your phone number associated with this account.",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: textColor,
                  )),
              SizedBox(height: Get.height * 0.02),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onSaved: (pin1){},
                        decoration: InputDecoration(
                         // hintText: "0",
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyText1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onSaved: (pin2){},
                        decoration:  InputDecoration(
                          // hintText: "0",
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyText1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onSaved: (pin3){},
                        decoration:  InputDecoration(
                          // hintText: "0",

                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyText1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onSaved: (pin4){},
                        decoration: InputDecoration(
                          // hintText: "0",
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyText1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: Get.height * 0.02),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't receive the code?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,

                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        debugPrint("Resend Code");

                      },
                      child: const Text(
                        "Resend Code",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          backgroundColor: Colors.transparent,

                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: Get.height * 0.025),
              button("Verify and Proceed", () {

              }),
            ],
          ),
        ),
      ),
    );
  }
}
