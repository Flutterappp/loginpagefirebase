import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';
import 'package:loginpagefirebase/src/features/screen/loginpage/loginpage.dart';

class SingupSreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SingupSreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // RESPONSIVE IMAGE
    // ignore: no_leading_underscores_for_local_identifiers
    bool _isPasswordHidden = true;
    // ignore: unused_local_variable, no_leading_underscores_for_local_identifiers
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GeniusGuild',
            style: TextStyle(
                color: tSecodaryColor,
                fontFamily: 'Bold',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: tPrimaryColor,
        ),
        backgroundColor: tPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /**Section1 */
                Image(
                  image: const AssetImage(tsingupimage),
                  height: size.height * 0.2,
                ),
                const Text(
                  tsingupTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Bold',
                  ),
                ),
                const Text(
                  tsingupSubTitle,
                  style: TextStyle(fontSize: 20, fontFamily: 'Medium'),
                ),
                /**end */

                /**Section2 */
                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_2_outlined),
                              labelText: 'First Name',
                              hintText: 'Enter Your First Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return const TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_2_outlined),
                                  labelText: 'Last Name',
                                  hintText: 'Enter Your Last Name',
                                  border: OutlineInputBorder(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return const TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.phone_android_outlined),
                                  labelText: 'Phone Number',
                                  hintText: 'Enter Your Phone Number',
                                  border: OutlineInputBorder(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return TextField(
                                obscureText: _isPasswordHidden,
                                keyboardType: TextInputType.text,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  prefixIcon:
                                      const Icon(Icons.fingerprint_outlined),
                                  labelText: 'Create Password',
                                  hintText: 'Create your password',
                                  border: const OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(_isPasswordHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordHidden = !_isPasswordHidden;
                                      });
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: const RoundedRectangleBorder(),
                                foregroundColor: tWhiteColors,
                                backgroundColor: tSecodaryColor,
                                side: const BorderSide(color: tSecodaryColor),
                                padding: const EdgeInsets.symmetric(
                                  vertical: tButtonHight,
                                ),
                              ),
                              child: Text(tSignup.toUpperCase()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /** One more column after login button */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Add your widgets here for the additional column
                    // Example:
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'OR',
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: const Image(
                            image: AssetImage(tlogo),
                            width: 20.0,
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                tSecodaryColor), // Set background color here
                          ),
                          label: const Text(tSigninwithgoogle,
                              style: TextStyle(color: Colors.white))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: const Image(
                            image: AssetImage(tlogo1),
                            width: 20.0,
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                tSecodaryColor), // Set background color here
                          ),
                          label: const Text(tSigninwithfacebook,
                              style: TextStyle(color: Colors.white))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          tAlreadyAnAccount,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),

                    // Add more widgets as needed
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _isPasswordHidden {}
