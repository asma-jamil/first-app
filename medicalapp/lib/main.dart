import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:medicalapp/cosmetics.dart';
import 'package:medicalapp/furniturehomescreen.dart';
import 'package:medicalapp/onboardingscreen.dart';
import 'package:medicalapp/plantscreen.dart';
// import 'package:flutter_search_bar/flutter_search_bar.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreenSTF(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}

class SplashScreenSTF extends StatefulWidget {
  const SplashScreenSTF({Key? key}) : super(key: key);

  @override
  State<SplashScreenSTF> createState() => _SplashScreenSTFState();
}

class _SplashScreenSTFState extends State<SplashScreenSTF> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: const Image(image: AssetImage('assets/images/medical.png')),
      title: Text(
        "Save Lives",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: ShoppingCart(),
      durationInSeconds: 5,
    );
  }
}

