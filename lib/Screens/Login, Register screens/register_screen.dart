import 'package:flutter/material.dart';
import 'package:tiffily/Screens/Login,%20Register%20screens/address_screen.dart';
import 'package:tiffily/utils/utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 115),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create an account",
                style: TextStyle(
                  fontFamily: chauFont,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff916E6A),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "To become a Tiffily partner and start delivering delicious \n tiffins to our customers, please provide the following \ninformation",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: chauFont,
                  color: Color(0xff916E6A),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      height: 58,
                      width: 335,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x555E681F)
                                  .withOpacity(0.15), // Shadow color with alpha
                              offset: const Offset(
                                  0, 10), // Horizontal and vertical offset
                              blurRadius: 80, // Blur radius
                              spreadRadius: 0, // Spread radius
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: poppinsFont,
                                  color: const Color(0xff3F3D56)
                                      .withOpacity(0.5))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      height: 58,
                      width: 335,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x555E681F)
                                  .withOpacity(0.15), // Shadow color with alpha
                              offset: const Offset(
                                  0, 10), // Horizontal and vertical offset
                              blurRadius: 80, // Blur radius
                              spreadRadius: 0, // Spread radius
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: poppinsFont,
                                  color: const Color(0xff3F3D56)
                                      .withOpacity(0.5))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      height: 58,
                      width: 335,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x555E681F)
                                  .withOpacity(0.15), // Shadow color with alpha
                              offset: const Offset(
                                  0, 10), // Horizontal and vertical offset
                              blurRadius: 80, // Blur radius
                              spreadRadius: 0, // Spread radius
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: "Email Address",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: poppinsFont,
                                  color: const Color(0xff3F3D56)
                                      .withOpacity(0.5))),
                        ),
                      ),
                    ),
                  )
                ],
              )),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressScreen()));
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Continue",
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
      ),
    );
  }
}
