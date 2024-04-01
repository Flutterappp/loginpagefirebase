import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(tDefultSize),
        child: Column(
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            const Text(
              tOtpSubTitle,
              style: TextStyle(fontFamily: 'Medium', fontSize: 20),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "${tOtpMessage}support@appstar.com ",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.01),
              filled: true,
              onSubmit: (code) {
                print("OTP IS =>$code");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
