import 'package:flutter/material.dart';
import 'package:savejar_app/pages/login/login_page.dart';
import 'package:savejar_app/pages/onboarding/intro_screens/intro_page_one.dart';
import 'package:savejar_app/pages/onboarding/intro_screens/intro_page_three.dart';
import 'package:savejar_app/pages/onboarding/intro_screens/intro_page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // controller to keep track of which page we are on
  final PageController _controller = PageController();

  // keep track if we are on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),

          // dot indicators
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                          'SKIP',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                ),
                // dot indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(activeDotColor: Colors.white),
                ),
                // next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'DONE',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
