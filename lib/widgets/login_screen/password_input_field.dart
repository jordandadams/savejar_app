import 'package:flutter/material.dart';
import 'package:savejar_app/utils/constants.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({ Key? key, required this.icon, required this.hint, this.inputAction, this.inputType, }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Container(
          height: size.height * 0.08,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.grey[500]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    icon,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
                hintText: hint,
                hintStyle: loginTxtStyle,
              ),
              obscureText: true,
              style: loginTxtStyle,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}