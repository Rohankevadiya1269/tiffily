import 'package:flutter/material.dart';
import 'package:tiffily/Screens/login_screen.dart';
import 'package:tiffily/utils/utils.dart';

class OnboardingScrren extends StatefulWidget {
  const OnboardingScrren({super.key});

  @override
  State<OnboardingScrren> createState() => _OnboardingScrrenState();
}

class _OnboardingScrrenState extends State<OnboardingScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: SizedBox(
              height: 85,
              width: 165,
              child: Image.asset(tiffilyPartner),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SizedBox(
              height: 210,
              width: 260,
              child: Image.asset(
                "assets/onboard_photo.png",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 80),
            child: Text(
              "Join our Culinary Community!",
              style: TextStyle(
                  fontFamily: chauFont,
                  color: Color(0xff9E616A),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              "Become a Homestyle Chef\nExtraordinaire and Share Your\nSignature Dishes with\nHungry Foodies!",
              style: TextStyle(
                  color: Color(0xff9E616A),
                  fontSize: 22,
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 18, top: 57),
              child: RawMaterialButton(
                 onPressed:() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                fillColor: const Color(0xffF0A04B).withOpacity(0.8),
                // ignore: sort_child_properties_last
                child: const Icon(
                  Icons.arrow_forward,
                  size: 35.0,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
