import 'package:flutter/material.dart';
import 'package:savejar_app/utils/constants.dart';
import '../../widgets/top_text.dart';
import '../../widgets/bottom_text.dart';

enum Screens {
  createAccount,
  welcomeBack,
}

class LoginPageViewModel extends StatelessWidget {
  const LoginPageViewModel({Key? key}) : super(key: key);

  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          primary: loginSecondaryColor,
          elevation: 8,
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: loginPrimaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: loginPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/google.png')
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        onPressed: () {},
        child: const Text('Forgot Password?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: loginSecondaryColor,
        ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.createAccount;

    return Stack(
      children: [
        const Positioned(
          top: 136,
          left: 24,
          child: TopText(screen: currentScreen),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: currentScreen == Screens.createAccount
                ? [
                    inputField('Username', Icons.account_box),
                    inputField('Email', Icons.mail),
                    inputField('Password', Icons.key),
                    loginButton('Sign Up'),
                    orDivider(),
                    logos(),
                  ]
                : [
                    inputField('Email', Icons.mail),
                    inputField('Password', Icons.key),
                    loginButton('Sign Up'),
                    forgotPassword(),
                  ],
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: BottomText(screen: currentScreen),
          ),
        ),
      ],
    );
  }
}