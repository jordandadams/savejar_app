import 'package:flutter/material.dart';
import 'package:savejar_app/utils/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({ Key? key, required this.buttonName }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: loginSecondaryColor,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            buttonName,
            style: loginTxtStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}