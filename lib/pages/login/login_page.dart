import 'package:flutter/material.dart';
import 'login_page_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginPageViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: model.nav, child: const Icon(Icons.arrow_forward),),
        body: const Center(
          child: Text('Start Up View, click the button to go to home view'),
        ),
      ),
      viewModelBuilder: () => LoginPageViewModel(),
    );
  }
}