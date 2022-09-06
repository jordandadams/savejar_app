import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({Key? key}) : super(key: key);

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
              'Learn to Buget the Right Way',
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
              'Create a savings goal today, so your\nmoney can be set for tomorrow!',
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
              introPageTwoImg,
              height: 215,
              width: 215,
            ),
          ),
        ],
      ),
    );
  }
}