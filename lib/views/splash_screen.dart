import 'package:flutter/material.dart';
import 'package:movie_app_c11/home.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = "SplashView";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Home.routName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Image.asset(
      //   "assets/images/supervised.png",
      //   alignment: Alignment.bottomCenter,
      // ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/splash_view.png")),
        ],
      ),
    );
  }
}
