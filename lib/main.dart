import 'package:flutter/material.dart';
import 'utils/router/savejar_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _router = SaveJarRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.router.routeInformationParser,
        routerDelegate: _router.router.routerDelegate,
        title: 'SaveJar',
        debugShowCheckedModeBanner: false,
      );
}