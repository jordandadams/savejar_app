import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../pages/create_account/create_account_page.dart';
import '../../pages/home/home_page.dart';
import '../../pages/login/login_page.dart';
import '../../pages/onboarding/onboarding_page.dart';

class SaveJarRouter {
  
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => const LoginPage(),
      ),
      GoRoute(
        path: '/createaccount',
        builder: (BuildContext context, GoRouterState state) => const CreateAccountPage(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (BuildContext context, GoRouterState state) => const OnboardingPage(),
      ),
    ],
  );

}