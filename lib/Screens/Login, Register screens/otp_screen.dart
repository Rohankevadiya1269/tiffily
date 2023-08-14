import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiffily/Screens/Login,%20Register%20screens/login_screen.dart';
import 'package:tiffily/Screens/Login,%20Register%20screens/register_screen.dart';
import 'package:tiffily/utils/utils.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _secondsLeft = 59;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsLeft > 0) {
          _secondsLeft--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      height: 85,
                      width: 170,
                      child: Image.asset(tiffilyPartner))
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
            const SizedBox(
              height: 15,
            ),
            const Text(
              "has been sent to the mobile number you entered...",
              style: TextStyle(
                  fontFamily: chauFont,
                  color: Color(0xff9E616A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin1) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontFamily: chauFont,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontWeight: FontWeight.w600,
                          fontFamily: chauFont),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin3) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontWeight: FontWeight.w600,
                          fontFamily: chauFont),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin4) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontWeight: FontWeight.w600,
                          fontFamily: chauFont),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin5) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontWeight: FontWeight.w600,
                          fontFamily: chauFont),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5D6976).withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 12),
                      )
                    ]),
                    child: TextFormField(
                      autofocus: true,
                      onSaved: (pin6) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                          color: Color(0xff916E6A),
                          fontWeight: FontWeight.w600,
                          fontFamily: chauFont),
                      decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100))),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )),
            const SizedBox(
              height: 25,
            ),
            Text(
              '00:$_secondsLeft',
              style: const TextStyle(
                  color: Color(0xff916E6A),
                  fontSize: 15,
                  fontFamily: poppinsFont,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive the code?",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: poppinsFont,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff916E6A))),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      " Resend now",
                      style: TextStyle(
                          color: Color(0xffF0A04B),
                          fontSize: 12,
                          fontFamily: poppinsFont,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  "Submit",
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
