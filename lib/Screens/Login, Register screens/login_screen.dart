import 'package:flutter/material.dart';
import 'package:tiffily/Screens/Login,%20Register%20screens/otp_screen.dart';
import 'package:tiffily/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 33),
                child: SizedBox(
                    height: 85, width: 170, child: Image.asset(tiffilyPartner)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 200,
              width: 270,
              child: Image.asset(
                loginScreenImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              "Login/Register",
              style: TextStyle(
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xff9E616A)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Skip the cooking, enjoy the taste of home",
              style: TextStyle(
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff9E616A)),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 330,
              height: 60,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff555E68).withOpacity(0.12),
                    blurRadius: 80,
                    spreadRadius: 0,
                    offset: const Offset(0, 10))
              ]),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        color: const Color(0xff3F3D56).withOpacity(0.5),
                        fontSize: 16,
                        fontFamily: poppinsFont,
                        fontWeight: FontWeight.w400),
                    border: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SizedBox(
                        height: 6,
                        width: 6,
                        child: Image.asset(
                          indianFlag, fit: BoxFit.cover,
                          // height: 5,
                          // width: 5,
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  "Get OTP",
                  style: TextStyle(
                      fontFamily: poppinsFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xffFFFFFF)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff9E616A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(320, 52)))
          ],
        ),
      ),
    );
  }
}
