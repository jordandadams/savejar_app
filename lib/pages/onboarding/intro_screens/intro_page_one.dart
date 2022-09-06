import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: loginSecondaryColor,
      child: Column(
        children: [
          const Gap(150),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Welcome to SaveJar',
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(10),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Take control of your money by tracking\nexpenses and adding goals!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(100),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              introPageOneImg,
              height: 215,
              width: 215,
            ),
          ),
        ],
      ),
    );
  }
}