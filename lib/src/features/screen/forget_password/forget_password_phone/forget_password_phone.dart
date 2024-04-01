import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';
import 'package:loginpagefirebase/src/features/screen/forget_password/forget_password_otp/forget_password_otp.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return   SafeArea(
      child: Scaffold(
        backgroundColor: tPrimaryColor,
         appBar: AppBar(title: const Text('GeniusGuild',style: TextStyle(color: tSecodaryColor,fontFamily: 'Bold',fontWeight: FontWeight.bold),),backgroundColor: tPrimaryColor,),
         body: SingleChildScrollView(
           child: Container(
            padding: const EdgeInsets.all(tDefultSize),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: tDefultSize*3,),
                  Image(
                      image: const AssetImage(tForgetPasswordImage),
                      
                      height: size.height * 0.2,
                    ),
                    const Text(
                      tforgetbyPhone,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Bold',
                      ),
                    ),
                    const Text(
                      tForgetPasswordSubTitle2,
                      style: TextStyle(fontSize: 20, fontFamily: 'Medium'),
                    ),
                    const SizedBox(height: 10.0,),
                    Form(child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(tPhone),
                          hintText: tPhone,
                          prefixIcon: Icon(Icons.phone_android_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                             ElevatedButton(
                                onPressed: () {
                                     Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OTPScreen()));
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
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Center(child: Text("Next".toUpperCase()))),
                              ),
                            
      
                    ],))
              ],
            ),
           ),
         ),
      
      
      ),
    );
  }
}