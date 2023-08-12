import 'package:flutter/material.dart';
import 'package:tiffily/Screens/login_screen.dart';
import 'package:tiffily/utils/utils.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 33, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 47),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff9E616A),
                      size: 29,
                    ),
                  ),
                ),
                SizedBox(
                    height: 85, width: 170, child: Image.asset(tiffilyPartner))
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 190,
              width: 250,
              child: Image.asset(
                otpScreenImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Verification Code",
            style: TextStyle(
                fontFamily: chauFont,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xff9E616A)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15,),
          const Text(
            "has been sent to the mobile number you entered...",
            style: TextStyle(
                fontFamily: chauFont,
                color: Color(0xff9E616A),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
