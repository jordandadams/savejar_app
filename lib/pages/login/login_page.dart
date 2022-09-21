import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:savejar_app/utils/constants.dart';
import 'package:savejar_app/widgets/login_screen/password_input_field.dart';
import 'package:savejar_app/widgets/login_screen/rounded_button.dart';
import 'package:savejar_app/widgets/login_screen/text_input_field.dart';
import 'login_page_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/login_screen/background-image.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginPageViewModel>.reactive(
      builder: (context, model, child) => Stack(
        children: [
          const BackgroundImage(
            image: 'assets/images/login_bg_img.jpg',
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const Gap(100),
                Flexible(
                  child: Center(
                    child: Image.asset(
                      'assets/images/app_logo_1_trans.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                const Flexible(
                  child: Center(
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontFamily: 'Karla',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextInputField(
                      hint: 'Email',
                      icon: Icons.mail,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    const PasswordInputField(
                      icon: Icons.lock, 
                      hint: 'Password',
                      inputAction: TextInputAction.done,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Forgot Password?',
                          style: loginTxtStyle,
                        ),
                      ),
                    ),
                    const Gap(25),
                    const RoundedButton(
                      buttonName: 'Login',
                    ),
                    const Gap(175),
                  ],
                ),
                GestureDetector(
                  onTap: () => GoRouter.of(context).go('/createaccount'),
                  child: Container(
                    child: const Text(
                      'Create New Account',
                      style: loginTxtStyle,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1, color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(35),
              ],
            ),
          ),
        ],
      ),
      viewModelBuilder: () => LoginPageViewModel(),
    );
  }
}