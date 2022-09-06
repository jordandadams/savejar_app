import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({Key? key}) : super(key: key);

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
              'Keep Track Of All Your Savings',
              style: TextStyle(
                fontFamily: 'Karla',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(10),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Use SaveJar to keep track of all your savings in one place!',
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
              introPageThreeImg,
              height: 215,
              width: 215,
            ),
          ),
        ],
      ),
    );
  }
}