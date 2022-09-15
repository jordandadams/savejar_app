import 'package:stacked/stacked.dart';
import 'package:savejar_app/utils/router/savejar.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:savejar_app/utils/router/savejar.locator.dart';

class LoginPageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountPage);
  }
}