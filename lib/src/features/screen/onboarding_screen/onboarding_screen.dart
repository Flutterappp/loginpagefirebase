import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';
import 'package:loginpagefirebase/src/features/screen/welcome_screen/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final liquidController = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: liquidController,
            onPageChangeCallback: onPageChange,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableLoop: true,
            pages: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: const AssetImage(tOnBoardingImage1),
                        height: size.height * 0.3,
                      ),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            tOnBoardingTitle1,
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Bold',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(tOnBoardingSubTitle1,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Medium')),
                        ),
                      ],
                    ),
                    const Text(
                      tOnBoardingCounter1,
                      style: TextStyle(fontFamily: 'Medium'),
                    ),
                    const SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              ),
              //screen 2
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.yellow.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: const AssetImage(tOnBoardingImage2),
                        height: size.height * 0.3,
                      ),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            tOnBoardingTitle2,
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Bold',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(tOnBoardingSubTitle2,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Medium')),
                        ),
                      ],
                    ),
                    const Text(
                      tOnBoardingCounter2,
                      style: TextStyle(fontFamily: 'Medium'),
                    ),
                    const SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              ),
              //screen 3
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.yellow.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: const AssetImage(tOnBoardingImage3),
                        height: size.height * 0.3,
                      ),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            tOnBoardingTitle3,
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Bold',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(tOnBoardingSubTitle3,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Medium')),
                        ),
                      ],
                    ),
                    const Text(
                      tOnBoardingCounter3,
                      style: TextStyle(fontFamily: 'Medium'),
                    ),
                    const SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()));
                // Navigate to the last page when Skip button is pressed
                liquidController.animateToPage(page: 2, duration: 500);
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPageChange(int page) {
    setState(() {
      currentPage = page;
    });
  }
}
