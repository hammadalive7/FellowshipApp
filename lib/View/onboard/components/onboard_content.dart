import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../components/size_config.dart';

class onboardContent extends StatelessWidget {
  const onboardContent({
    Key? key,
    this.text,
    this.image,
    this.heading,
  }) : super(key: key);
  final String? text, image,heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Text(
          heading!,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: getProportionateScreenWidth(32),)
        ),
        Container(
          width:85,
          height: 4,
          margin: const EdgeInsets.only(
              bottom: 25
          ),
          decoration: const BoxDecoration(
            color:primary,
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(350),
          width: getProportionateScreenWidth(285),
        ),
        SizedBox(
          height:  getProportionateScreenHeight(30),
        ),
        Text(
          text!,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: getProportionateScreenWidth(16)),
           textAlign: TextAlign.center
        ),
      ],
    );
  }
}
