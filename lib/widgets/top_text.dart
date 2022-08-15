import 'package:flutter/material.dart';

import '../pages/login_page_view_model.dart';

class TopText extends StatelessWidget {
  // instantiating the object
  final Screens screen;

  const TopText({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      screen == Screens.createAccount ? 'Create\nAccount' : 'Welcome\nBack',
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}