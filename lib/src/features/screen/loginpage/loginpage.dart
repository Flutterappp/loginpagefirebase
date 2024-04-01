import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';
import 'package:loginpagefirebase/src/features/core/Screen/dashboard/dashboard.dart';
import 'package:loginpagefirebase/src/features/screen/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:loginpagefirebase/src/features/screen/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:loginpagefirebase/src/features/screen/singupscreen/singupscreen.dart';

class LoginScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const LoginScreen({Key? key});

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
                  image: const AssetImage(tloginimage),
                  height: size.height * 0.2,
                ),
                const Text(
                  tLoginTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Bold',
                  ),
                ),
                const Text(
                  tLoginSubTitle,
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
                              labelText: 'Email',
                              hintText: 'Enter Your Email',
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
                              return TextField(
                                obscureText: _isPasswordHidden,
                                keyboardType: TextInputType.text,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  prefixIcon:
                                      const Icon(Icons.fingerprint_outlined),
                                  labelText: 'Password',
                                  hintText: 'Enter Your Password',
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
                        //forget password BTN
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: tPrimaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0)), //dialogbox
                                builder: (context) => Container(
                                  padding: const EdgeInsets.all(tDefultSize),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        tForgetPasswordTitle,
                                        style: TextStyle(
                                            fontSize: 30, fontFamily: 'Bold'),
                                      ),
                                      const Text(
                                        tForgetPasswordSubTitle,
                                        style: TextStyle(
                                            fontSize: 15, fontFamily: 'Medium'),
                                      ),
                                      const SizedBox(
                                        height: 30.0,
                                      ),
                                      GestureDetector(
                                        //make a wedigt tap abble like inkwell
                                        onTap: () {
                                          Navigator.pop(context); //navigator.
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ForgetPasswordMailScreen()));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(20.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey.shade200),
                                          child: const Row(
                                            //forgetpassword by mail id
                                            children: [
                                              Icon(
                                                Icons.mail_lock_rounded,
                                                size: 50.0,
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    tEmail,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Bold'),
                                                  ),
                                                  Text(
                                                    tResetViaEmail,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Medium'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      //forgetpassword by phone number
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                          //navigator.
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ForgetPasswordPhoneScreen()));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(20.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey.shade200),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.phone_android_outlined,
                                                size: 50.0,
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    tPhone,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Bold'),
                                                  ),
                                                  Text(
                                                    tResetViaPhone,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Medium'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ); //for forgetPassword
                            },
                            child: const Text(tFrogetPassword,
                                style: TextStyle(color: Colors.blue)),
                          ),
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
                                                      const Dashboard()));
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
                              child: Text(tLogin.toUpperCase()),
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
                                  builder: (context) => const SingupSreen()));
                        },
                        child: const Text(
                          tCreateaNewAccount,
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
