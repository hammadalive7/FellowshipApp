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
              SizedBox(height: 30),
              Text(
                "Email Address or Username",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              SizedBox(height: 5),
              CustomTextFormField("Your email address or username", false),
              SizedBox(height: 20),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,

                ),
              ),
              SizedBox(height: 5),
              CustomTextFormField("Your password", true),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: TextButton(
                      onPressed: () {
                        debugPrint("Forgot Password Pressed");
                      },
                      child: Text(
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
              SizedBox(height: 10),
              button("Login", () {
                debugPrint("Login Pressed");
              }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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

              SizedBox(height: 20),
              LoginOutlinebutton("Login with Google","Login with Facebook", () {
                debugPrint("Login with Google Pressed");
              }),
              SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
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
                      child: Text(
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
