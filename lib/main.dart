import 'package:flutter/material.dart';
import 'package:savejar_app/utils/router/savejar.router.dart';
import 'package:stacked_services/stacked_services.dart';
import '/utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}