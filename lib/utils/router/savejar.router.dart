// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../pages/home/home_page.dart';
import '../../pages/login/login_page.dart';
import '../../pages/onboarding/onboarding_page.dart';

class Routes {
  static const String onboardingPage = '/';
  static const String loginPage = '/login-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    onboardingPage,
    loginPage,
    homePage,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.homePage, page: HomePage),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    OnboardingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnboardingPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomePage(),
        settings: data,
      );
    },
  };
}
