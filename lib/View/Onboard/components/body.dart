import 'package:fellowship_app/View/login/login_page.dart';
import 'package:flutter/material.dart';
import '../../../components/size_config.dart';
import '../../../theme/colors.dart';
import './onboard_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Map<String, String>> onboardData = [
    {
      "text": "Welcome to Bytewise Limited which is a  talented development & community wing aiming towards growth of digital world!",
      "image": "assets/images/onboard1.png",
      "heading":"Introduction"
    },
    {
      "text": "Welcome to Bytewise Limited which is a  talented development & community wing aiming towards growth of digital world!",
      "image": "assets/images/onboard2.png",
      "heading":"Fellowship"
    },
    {
      "text": "Welcome to Bytewise Limited which is a  talented development & community wing aiming towards growth of digital world!",
      "image": "assets/images/onboard3.png",
      "heading":"Job Offers"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:getProportionateScreenWidth(20),
    ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child:Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        child:GestureDetector(
                            onTap:(){
                              Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                            },
                            child:const Text('Skip',
                              style: TextStyle(
                                  color: accent,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24
                              )
                              ,)
                        ),
                      ),
                    ),
                  ]
              ),
              ),
              Expanded(
                flex: 5,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardData.length,
                  itemBuilder: (context, index) => onboardContent(
                    image: onboardData[index]["image"],
                    text: onboardData[index]['text'],
                    heading: onboardData[index]['heading'],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardData.length,
                              (index) => buildDot(index: index),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child:Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenWidth(20)),
                                  child:GestureDetector(
                                    onTap:(){
                                      _controller.nextPage(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.bounceIn,
                                      );
                                  },
                                  child:Image.asset(
                                    'assets/images/Arrow1.png',
                                    height: getProportionateScreenHeight(30),
                                    width: getProportionateScreenWidth(30),
                                  ),
                              ),
                            ),
                          )
                        ],
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 40 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? Theme.of(context).colorScheme.primary : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
