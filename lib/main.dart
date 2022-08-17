import 'package:flutter/material.dart';
import '/pages/login/login_page.dart';
import '/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaveJar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: loginBgColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: loginPrimaryColor,
          fontFamily: 'Montserrat',
        ),
      ),
      home: const LoginPage(),
    );
  }
}