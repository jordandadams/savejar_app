import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  final String _title = 'Home View';
  String get title => '$_title Counter: $counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

}