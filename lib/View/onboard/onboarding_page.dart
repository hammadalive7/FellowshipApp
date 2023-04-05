import 'package:flutter/material.dart';
import '../../components/size_config.dart';
import './components/body.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }

}