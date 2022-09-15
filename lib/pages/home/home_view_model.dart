import 'package:stacked/stacked.dart';
import 'package:savejar_app/utils/router/savejar.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:savejar_app/utils/router/savejar.locator.dart';

class HomePageViewModel extends BaseViewModel {
  final String _title = 'Home View';
  String get title => '$_title Counter: $counter';
  final _navigationService = locator<NavigationService>();

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void goForward() {
    _navigationService.navigateTo(Routes.onboardingPage);
  }

}