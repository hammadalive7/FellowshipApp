import 'package:fellowship_app/components/app_bar.dart';
import 'package:fellowship_app/components/button.dart';
import 'package:fellowship_app/components/size_config.dart';
import 'package:fellowship_app/components/textform_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Welcome Back!", "Login back to your account"),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Email Address or Username",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Your email address or username", false),
              const SizedBox(height: 20),
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField("Your password", true),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: TextButton(
                      onPressed: () {
                        debugPrint("Forgot Password Pressed");
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              button("Login", () {
                debugPrint("Login Pressed");
              }),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 130,
                    child: Divider(
                      color: Color.fromRGBO(87, 85, 85, 0.5),
                      thickness: 1,
                      height: 0,

                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("OR", style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,

                  ),),
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 130,
                    child: Divider(
                      color: Color.fromRGBO(87, 85, 85, 0.5),
                      thickness: 1,
                      height: 0,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              LoginOutlinebutton("Login with Google","Login with Facebook", () {
                debugPrint("Login with Google Pressed");
              }),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,

                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        debugPrint("Sign Up Pressed");
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
