import 'package:stacked/stacked_annotations.dart';
import 'package:savejar_app/pages/home/home_page.dart';
import 'package:savejar_app/pages/login/login_page.dart';
import 'package:stacked_services/stacked_services.dart';

// run new locator and router files with:
// flutter pub run build_runner build
// if error is thrown, use:
// flutter pub run build_runner build --delete-conflicting-outputs

@StackedApp(
  routes: [
    MaterialRoute(page: LoginPage, initial: true),
    CustomRoute(page: HomePage),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class SaveJar {
  // Serves no purpose yet
}