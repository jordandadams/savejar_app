import 'package:savejar_app/pages/onboarding/onboarding_page.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:savejar_app/pages/home/home_page.dart';
import 'package:savejar_app/pages/login/login_page.dart';
import 'package:savejar_app/pages/create_account/create_account_page.dart';
import 'package:stacked_services/stacked_services.dart';

// run new locator and router files with:
// flutter pub run build_runner build
// if error is thrown, use:
// flutter pub run build_runner build --delete-conflicting-outputs

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingPage, initial: true),
    CustomRoute(page: LoginPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: CreateAccountPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: HomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class SaveJar {
  // Serves no purpose yet
}