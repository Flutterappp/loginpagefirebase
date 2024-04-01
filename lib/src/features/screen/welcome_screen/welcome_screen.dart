import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';
import 'package:loginpagefirebase/src/features/screen/loginpage/loginpage.dart';
import 'package:loginpagefirebase/src/features/screen/singupscreen/singupscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1600));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      backgroundColor: tPrimaryColor,
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Container(
            padding: const EdgeInsets.all(tDefultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(tWelcomeImage1),
                  height: height * 0.4,
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        tWelcomeTitle,
                        style: TextStyle(fontSize: 30, fontFamily: "Bold"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        tWelcomeSubTitle,
                        style: TextStyle(fontSize: 20, fontFamily: "Medium"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                            },
                            style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                foregroundColor: tSecodaryColor,
                                side: const BorderSide(color: tSecodaryColor),
                                padding: const EdgeInsets.symmetric(
                                    vertical: tButtonHight)),
                            child: Text(tLogin.toUpperCase()))),
                    const SizedBox(width: 10.0),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingupSreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: const RoundedRectangleBorder(),
                                foregroundColor: tWhiteColors,
                                backgroundColor: tSecodaryColor,
                                side: const BorderSide(color: tSecodaryColor),
                                padding: const EdgeInsets.symmetric(
                                    vertical: tButtonHight)
                                    ),
                            child: Text(tSignup.toUpperCase())
                            )
                            ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
