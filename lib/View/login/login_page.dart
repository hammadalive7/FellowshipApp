import 'package:fellowship_app/components/app_bar.dart';
import 'package:fellowship_app/components/button.dart';
import 'package:fellowship_app/components/size_config.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Welcome Back!","Login back to your account"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Center(
          child: button("Login", () {
            debugPrint("Login Pressed");
          }),
        ),
      ),
    );
  }
}
